# PrimeSpectrum.preimageOrderIsoFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b74960faaa3e08b6c8b1db5903ec4ca8fc3d2232e5f585f1430df9eea2d76ba7",
  "kind": "def",
  "lexical_name": "PrimeSpectrum.preimageOrderIsoFiber",
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
  "slug": "primespectrum-preimageorderisofiber--bbe78f213e7154d5794d9562",
  "source": {
    "blob": "fce9211de87a29bb699ca0e6c93bbae56cbd0e74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 176,
    "path": "GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe78f213e7154d5794d9562254420a3b95444af06c7f244347498fdf72c3316",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b74960faaa3e08b6c8b1db5903ec4ca8fc3d2232e5f585f1430df9eea2d76ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PrimeSpectrum.preimageOrderIsoFiber (p : PrimeSpectrum R) :
    comap (algebraMap R S) ⁻¹' {p} ≃o PrimeSpectrum (p.asIdeal.Fiber S) where
  toEquiv := preimageEquivFiber R S p
  map_rel_iff' {q₁ q₂} := by
    constructor
    · obtain ⟨q₁, rfl⟩ := (preimageEquivFiber R S p).symm.surjective q₁
      obtain ⟨q₂, rfl⟩ := (preimageEquivFiber R S p).symm.surjective q₂
      simpa using! Ideal.comap_mono
    · intro H x hx
      obtain ⟨r, hr, s, e⟩ := Ideal.Fiber.exists_smul_eq_one_tmul _ x
      rw [← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ r), ← Algebra.smul_def, e] at hx ⊢
      · replace hx : s ∈ q₁.1.asIdeal := by simpa using! hx
        simpa using! H hx
      · rw [← q₂.2] at hr; simpa [IsScalarTower.algebraMap_apply R S q₂.1.asIdeal.ResidueField]
      · rw [← q₁.2] at hr; simpa [IsScalarTower.algebraMap_apply R S q₁.1.asIdeal.ResidueField]

variable (R S) in
/-- The `OrderIso` between the set of primes lying over a prime ideal `p : Ideal R`,
and the prime spectrum of `κ(p) ⊗[R] S`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce9211de87a29bb699ca0e6c93bbae56cbd0e74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
