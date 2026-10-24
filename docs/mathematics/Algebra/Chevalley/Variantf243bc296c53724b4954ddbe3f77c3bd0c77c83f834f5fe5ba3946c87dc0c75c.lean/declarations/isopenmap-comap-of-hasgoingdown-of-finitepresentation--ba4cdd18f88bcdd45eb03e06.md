# isOpenMap_comap_of_hasGoingDown_of_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e81ac9a1-8da6-4d9d-434a-6e48d3a386e1",
  "kind": "lemma",
  "lexical_name": "isOpenMap_comap_of_hasGoingDown_of_finitePresentation",
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
  "slug": "isopenmap-comap-of-hasgoingdown-of-finitepresentation--ba4cdd18f88bcdd45eb03e06",
  "source": {
    "blob": "cd73b232cc7aa1f3c177164f639ad0870d9fe44e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4cdd18f88bcdd45eb03e06d5a69d0ac7ffa86bde9075a358a0b2d9076747eb",
  "verification": {
    "reference": "docs/verification/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e81ac9a1-8da6-4d9d-434a-6e48d3a386e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpenMap_comap_of_hasGoingDown_of_finitePresentation
    [Algebra R S] [Algebra.HasGoingDown R S] [Algebra.FinitePresentation R S] :
    IsOpenMap (comap (algebraMap R S)) := by
  rw [isBasis_basic_opens.isOpenMap_iff]
  rintro _ ⟨_, ⟨f, rfl⟩, rfl⟩
  exact isOpen_of_stableUnderGeneralization_of_isConstructible
    ((basicOpen f).2.stableUnderGeneralization.image
      (Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap.mp ‹_›))
    (isConstructible_comap_image (RingHom.finitePresentation_algebraMap.mpr ‹_›)
      isConstructible_basicOpen)

end PrimeSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd73b232cc7aa1f3c177164f639ad0870d9fe44e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
