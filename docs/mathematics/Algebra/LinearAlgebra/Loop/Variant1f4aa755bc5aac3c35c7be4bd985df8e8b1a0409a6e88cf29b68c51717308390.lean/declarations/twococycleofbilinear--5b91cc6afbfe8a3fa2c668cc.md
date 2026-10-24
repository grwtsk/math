# twoCocycleOfBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:733130cdcd93dca2ee135570f3f9b1a54ac014dc85523e68ac6da41e1fee7202",
  "kind": "def",
  "lexical_name": "twoCocycleOfBilinear",
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
  "slug": "twococycleofbilinear--5b91cc6afbfe8a3fa2c668cc",
  "source": {
    "blob": "61609a9a4cfc301e38ad21bf4c1fe84d250019ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b91cc6afbfe8a3fa2c668ccc3fedf45522397aaf3171ebb218a6c1b01cdf1be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:733130cdcd93dca2ee135570f3f9b1a54ac014dc85523e68ac6da41e1fee7202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoCocycleOfBilinear [CommRing A] [IsAddTorsionFree R] [Algebra A R]
    (Φ : LinearMap.BilinForm R L) (hΦ : Φ.lieInvariant L) (hΦs : Φ.IsSymm) :
    Cohomology.twoCocycle R (loopAlgebra R A L) (TrivialLieModule R (loopAlgebra R A L) R) where
  val := twoCochainOfBilinear R A L Φ hΦs
  property := by
    apply (LieModule.Cohomology.mem_twoCocycle_iff ..).mpr
    ext a x b y c z
    suffices
        b • Φ (Finsupp.single (a + c) ⁅x, z⁆ (-b)) y =
        c • Φ (Finsupp.single (a + b) ⁅x, y⁆ (-c)) z +
        a • Φ (Finsupp.single (b + c) ⁅y, z⁆ (-a)) x by
      simpa [trivial_lie_zero, sub_eq_zero, neg_add_eq_iff_eq_add, ← LinearEquiv.map_add,
        -LinearEquiv.map_add]
    by_cases h0 : a + b + c = 0
    · suffices b • Φ ⁅x, z⁆ y = c • Φ ⁅x, y⁆ z + a • Φ ⁅y, z⁆ x by
        simpa only [show a + b = -c by grind, show a + c = -b by grind, show b + c = -a by grind,
          Finsupp.single_eq_same]
      rw [hΦ, hΦs.eq z ⁅x, y⁆, hΦ y, ← lie_skew y x, hΦs.eq z, Φ.neg_left, neg_neg,
        show b = -(a + c) by grind, neg_smul, smul_neg, neg_neg, add_smul, add_comm]
    · simp [Finsupp.single_eq_of_ne (a := a + c) (a' := -b) (by grind),
        Finsupp.single_eq_of_ne (a := a + b) (a' := -c) (by grind),
        Finsupp.single_eq_of_ne (a := b + c) (a' := -a) (by grind)]

end LoopAlgebra

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61609a9a4cfc301e38ad21bf4c1fe84d250019ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
