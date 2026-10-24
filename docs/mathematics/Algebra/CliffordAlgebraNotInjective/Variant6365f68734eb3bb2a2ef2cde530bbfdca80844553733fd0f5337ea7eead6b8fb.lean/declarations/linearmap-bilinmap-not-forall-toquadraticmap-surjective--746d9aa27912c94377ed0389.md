# LinearMap.BilinMap.not_forall_toQuadraticMap_surjective.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d31523d8d2a407363a363dbcbaba467ed28c11ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b8487de-4fb7-48f2-24ab-77d0edf998df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa2aab1e-9b34-968d-de64-c36e9fe3314c",
  "kind": "theorem",
  "lexical_name": "LinearMap.BilinMap.not_forall_toQuadraticMap_surjective.",
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
  "slug": "linearmap-bilinmap-not-forall-toquadraticmap-surjective--746d9aa27912c94377ed0389",
  "source": {
    "blob": "d31523d8d2a407363a363dbcbaba467ed28c11ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 291,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:746d9aa27912c94377ed0389de242338d2ec1622be3679310a2c58a6ee52d0e1",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa2aab1e-9b34-968d-de64-c36e9fe3314c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.BilinMap.not_forall_toQuadraticMap_surjective.{v} :
    -- TODO: make `R` universe polymorphic
    ¬∀ (R : Type) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M],
      Function.Surjective (BilinMap.toQuadraticMap : BilinForm R M → QuadraticForm R M) :=
  fun h => Q_not_in_range_toQuadraticForm <| by
    let uU := ULift.moduleEquiv (R := K) (M := L)
    obtain ⟨x, hx⟩ := h K (ULift L) (Q.comp uU)
    refine ⟨x.compl₁₂ uU.symm uU.symm, ?_⟩
    ext
    simp [BilinMap.toQuadraticMap_comp_same, hx]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31523d8d2a407363a363dbcbaba467ed28c11ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
