# PrimeSpectrum.preimageHomeomorphFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee950acb22ae8e9fa7dedaf9f4ad33bac2ef545b4aa502ee24be7f4a6c7bdb1a",
  "kind": "def",
  "lexical_name": "PrimeSpectrum.preimageHomeomorphFiber",
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
  "slug": "primespectrum-preimagehomeomorphfiber--30206be4208f73c71d87587a",
  "source": {
    "blob": "4e25490987d542a916ea826a4d5f838b90c007d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 214,
    "path": "GRWTSK/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30206be4208f73c71d87587a5b2a1bb393b3b7c08ebb4a793c992a902668a444",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee950acb22ae8e9fa7dedaf9f4ad33bac2ef545b4aa502ee24be7f4a6c7bdb1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PrimeSpectrum.preimageHomeomorphFiber (R S : Type*) [CommRing R]
    [CommRing S] [Algebra R S] (p : PrimeSpectrum R) :
    comap (algebraMap R S) ⁻¹' {p} ≃ₜ PrimeSpectrum (p.asIdeal.Fiber S) := by
  letI H : Topology.IsEmbedding (preimageOrderIsoFiber R S p).symm := by
    refine (Topology.IsEmbedding.of_comp_iff .subtypeVal).mp ?_
    have := PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks _ S _
      (Ideal.surjectiveOnStalks_residueField p.asIdeal)
    exact ((Homeomorph.prodUnique _ _).isEmbedding.comp this).comp
      (homeomorphOfRingEquiv (Algebra.TensorProduct.comm _ _ _).toRingEquiv).isEmbedding
  exact
  { __ := preimageOrderIsoFiber R S p
    continuous_toFun := by
      convert!
        (H.toHomeomorphOfSurjective (preimageOrderIsoFiber R S p).symm.surjective).symm.continuous
      ext1 x
      obtain ⟨x, rfl⟩ := (H.toHomeomorphOfSurjective
        (preimageOrderIsoFiber R S p).symm.surjective).surjective x
      simp only [Equiv.toFun_as_coe, RelIso.coe_fn_toEquiv, Homeomorph.symm_apply_apply]
      simp
    continuous_invFun := H.continuous }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variant05420d8ef17973631d8f033e7ea021f2269cc2834e55359ac774bfa28be036d3.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e25490987d542a916ea826a4d5f838b90c007d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
