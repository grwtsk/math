# getElem_extract_loop_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d394abc85a852644392157668b505932dd3f7780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e74aa59a-97be-a564-dc45-d9de4ebec479",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71af9039-88bf-df8b-8731-ef65d24409a2",
  "kind": "theorem",
  "lexical_name": "getElem_extract_loop_ge",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "getelem-extract-loop-ge--8138312faec3d67c41adbe90",
  "source": {
    "blob": "d394abc85a852644392157668b505932dd3f7780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2828,
    "line": 2798,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8138312faec3d67c41adbe90f1555019e63e8100e65bafaa7f219c63bc7d7854",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71af9039-88bf-df8b-8731-ef65d24409a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2798–2828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_extract_loop_ge {xs ys : Array α} {size start : Nat} (hge : i ≥ ys.size)
    (h : i < (extract.loop xs size start ys).size) :
    (extract.loop xs size start ys)[i] = xs[start + i - ys.size]'(getElem_extract_loop_ge_aux hge h) := by
  induction size using Nat.recAux generalizing start ys with
  | zero =>
    rw [size_extract_loop, Nat.zero_min, Nat.add_zero] at h
    omega
  | succ size ih =>
    have h' : start + i - ys.size < xs.size := getElem_extract_loop_ge_aux hge h
    have : start < xs.size := by
      apply Nat.lt_of_le_of_lt (Nat.le_add_right start (i - ys.size))
      rwa [← Nat.add_sub_assoc hge]
    have : i < (extract.loop xs size (start+1) (ys.push xs[start])).size := by
      rwa [← extract_loop_succ]
    have heq : (extract.loop xs (size+1) start ys)[i] =
        (extract.loop xs size (start+1) (ys.push xs[start]))[i] := by
      congr 1; rw [extract_loop_succ]
    rw [heq]
    if hi : ys.size = i then
      cases hi
      have h₁ : ys.size < (ys.push xs[start]).size := by rw [size_push]; exact Nat.lt_succ_self ..
      have h₂ : ys.size < (extract.loop xs size (start+1) (ys.push xs[start])).size := by
        rw [size_extract_loop]; apply Nat.lt_of_lt_of_le h₁; exact Nat.le_add_right ..
      have h : (extract.loop xs size (start + 1) (ys.push xs[start]))[ys.size] = xs[start] := by
        rw [getElem_extract_loop_lt h₁ h₂, getElem_push_eq]
      rw [h]; congr; rw [Nat.add_sub_cancel]
    else
      have hge : ys.size + 1 ≤ i := Nat.lt_of_le_of_ne hge hi
      rw [ih ((size_push ..).symm ▸ hge)]
      congr 1; rw [size_push, Nat.add_right_comm, Nat.add_sub_add_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd3d343ae6aec3ee4de41c7008e4391a923befa309428a5aea8681e6c47f32721.lean#L2798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d394abc85a852644392157668b505932dd3f7780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
