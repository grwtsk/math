# readPairs_emit_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0673e694bd960e63c9765fe9fe0b4aced3e65f9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ScalarMapParserComposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87fc9010-3296-7521-758b-6afadcc25cce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c074835e-1b9a-c085-3d4c-d317e48dd7bd",
  "kind": "theorem",
  "lexical_name": "readPairs_emit_suffix",
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
  "slug": "readpairs-emit-suffix--8ac51ce375cf0024471afe1c",
  "source": {
    "blob": "0673e694bd960e63c9765fe9fe0b4aced3e65f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ScalarMapParserComposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ac51ce375cf0024471afe1c628e695d37d34f2be5dcf1ef233990347c31a3d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ScalarMapParserComposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c074835e-1b9a-c085-3d4c-d317e48dd7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readPairs_emit_suffix
    (p : Bytes → Option (Value × Bytes)) (ps : List (Bytes × Value)) (s : Bytes)
    (hk : ∀ kv ∈ ps, ∀ t, p (emit (.text kv.1) ++ t) = some (.text kv.1,t))
    (hv : ∀ kv ∈ ps, ∀ t, p (emit kv.2 ++ t) = some (kv.2,t)) :
    readPairs p ps.length
      (ps.flatMap (fun kv => emit (.text kv.1) ++ emit kv.2) ++ s) = some (ps,s) := by
  induction ps with
  | nil => rfl
  | cons kv ps ih =>
    have hk0 := hk kv (by simp) (emit kv.2 ++ ps.flatMap (fun x => emit (.text x.1) ++ emit x.2) ++ s)
    have hv0 := hv kv (by simp) (ps.flatMap (fun x => emit (.text x.1) ++ emit x.2) ++ s)
    simp only [List.append_assoc] at hk0
    have hks : ∀ x ∈ ps, ∀ t, p (emit (.text x.1) ++ t) = some (.text x.1,t) := by
      intro x hx t; exact hk x (by simp [hx]) t
    have hvs : ∀ x ∈ ps, ∀ t, p (emit x.2 ++ t) = some (x.2,t) := by
      intro x hx t; exact hv x (by simp [hx]) t
    simp only [List.length_cons, List.flatMap_cons, List.append_assoc, readPairs]
    simp [hk0, hv0, asText, ih hks hvs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ScalarMapParserComposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/ScalarMapParserComposition.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0673e694bd960e63c9765fe9fe0b4aced3e65f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
