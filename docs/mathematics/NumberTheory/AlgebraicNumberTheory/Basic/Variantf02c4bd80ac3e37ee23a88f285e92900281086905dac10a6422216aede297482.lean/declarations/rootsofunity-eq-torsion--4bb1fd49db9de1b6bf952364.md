# rootsOfUnity_eq_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "788e9840fa0f0e7671ea27256f98b08c17c7576f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ead43509-4839-e608-162c-adae73a4d8b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ea2be8e-5ad8-d20f-d992-af0d80877182",
  "kind": "theorem",
  "lexical_name": "rootsOfUnity_eq_torsion",
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
  "slug": "rootsofunity-eq-torsion--4bb1fd49db9de1b6bf952364",
  "source": {
    "blob": "788e9840fa0f0e7671ea27256f98b08c17c7576f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb1fd49db9de1b6bf952364e16ce8a2fd697985110b1612b8bb17de7c89d4f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ea2be8e-5ad8-d20f-d992-af0d80877182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootsOfUnity_eq_torsion :
    rootsOfUnity (torsionOrder K) (𝓞 K) = torsion K := by
  ext ζ
  rw [torsion, mem_rootsOfUnity]
  refine ⟨fun h ↦ ?_, fun h ↦ pow_torsionOrder_eq_one K h⟩
  rw [CommGroup.mem_torsion, isOfFinOrder_iff_pow_eq_one]
  exact ⟨torsionOrder K, torsionOrder_pos K, h⟩

/--
The image of `torsion K` by a complex embedding is the group of complex roots of unity of
order `torsionOrder K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantf02c4bd80ac3e37ee23a88f285e92900281086905dac10a6422216aede297482.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788e9840fa0f0e7671ea27256f98b08c17c7576f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
