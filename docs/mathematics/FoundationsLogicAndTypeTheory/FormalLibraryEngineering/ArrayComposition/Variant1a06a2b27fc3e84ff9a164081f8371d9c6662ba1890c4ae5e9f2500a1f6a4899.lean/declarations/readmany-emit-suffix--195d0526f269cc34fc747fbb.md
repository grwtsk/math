# readMany_emit_suffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2aa6df86f817ad96459af22bdbe39673a906fdd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/foundation/canonical/formal/c2/ArrayComposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:805c9e7e-e8c1-10ca-ca69-20a4e4a36cf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74033f4c-a900-9412-84fc-80320fbf63b0",
  "kind": "theorem",
  "lexical_name": "readMany_emit_suffix",
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
  "slug": "readmany-emit-suffix--195d0526f269cc34fc747fbb",
  "source": {
    "blob": "2aa6df86f817ad96459af22bdbe39673a906fdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArrayComposition/Variant1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:195d0526f269cc34fc747fbbf776a4cdf1c5f31fd5aba0d2af21a8d31ace372a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArrayComposition/Variant1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74033f4c-a900-9412-84fc-80320fbf63b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readMany_emit_suffix
    (p : Bytes → Option (Value × Bytes)) (vs : List Value) (suffix : Bytes)
    (hchild : ∀ v ∈ vs, ∀ tail : Bytes, p (emit v ++ tail) = some (v, tail)) :
    readMany p vs.length (vs.flatMap emit ++ suffix) = some (vs, suffix) := by
  induction vs with
  | nil => rfl
  | cons v vs ih =>
    have hv := hchild v (by simp) (vs.flatMap emit ++ suffix)
    have hs : ∀ x ∈ vs, ∀ tail : Bytes, p (emit x ++ tail) = some (x, tail) := by
      intro x hx tail
      exact hchild x (by simp [hx]) tail
    simp only [List.length_cons, List.flatMap_cons, List.append_assoc, readMany]
    simp [hv, ih hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArrayComposition/Variant1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArrayComposition/Variant1a06a2b27fc3e84ff9a164081f8371d9c6662ba1890c4ae5e9f2500a1f6a4899.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2aa6df86f817ad96459af22bdbe39673a906fdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
