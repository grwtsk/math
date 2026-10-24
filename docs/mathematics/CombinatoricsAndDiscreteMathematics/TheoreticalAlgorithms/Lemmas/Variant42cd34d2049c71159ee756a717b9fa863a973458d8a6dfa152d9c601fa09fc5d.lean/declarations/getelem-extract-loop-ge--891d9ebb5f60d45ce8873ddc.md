# getElem_extract_loop_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:001c9dd7-313d-5dd2-6d61-cd6dd2fa656b",
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
  "slug": "getelem-extract-loop-ge--891d9ebb5f60d45ce8873ddc",
  "source": {
    "blob": "1812a095ab5e84d89a8d03a9f40790d49e3e697d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2836,
    "line": 2806,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891d9ebb5f60d45ce8873ddca18819871be75b8a108c90ffec93e98085faa30b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:001c9dd7-313d-5dd2-6d61-cd6dd2fa656b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2806–2836.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant42cd34d2049c71159ee756a717b9fa863a973458d8a6dfa152d9c601fa09fc5d.lean#L2806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1812a095ab5e84d89a8d03a9f40790d49e3e697d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
