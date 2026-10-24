# twoCocycleOfBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c532f048954aeb193a7ca2faf7a16e0bed3ec76373e5c1b086cec4fcde6c4ded",
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
  "slug": "twococycleofbilinear--b03d8cf7b4ce7b5a93fa700b",
  "source": {
    "blob": "2731f2051920e25b39939fef5db21aa13990e016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b03d8cf7b4ce7b5a93fa700bff07393b345e7f1df1971479ebf06f159bd5adc8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c532f048954aeb193a7ca2faf7a16e0bed3ec76373e5c1b086cec4fcde6c4ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–208.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Loop/Variant6b9887ba2abed53237673a14239802bc837ed95a81a957cd31b153a25fe97c3a.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2731f2051920e25b39939fef5db21aa13990e016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
