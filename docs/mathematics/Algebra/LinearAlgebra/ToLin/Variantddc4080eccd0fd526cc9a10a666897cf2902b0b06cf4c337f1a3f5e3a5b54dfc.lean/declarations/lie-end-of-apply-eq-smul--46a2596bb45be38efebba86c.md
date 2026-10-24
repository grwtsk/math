# lie_end_of_apply_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b82f6d1d-9ce3-36d9-89f6-f7cd3d09596a",
  "kind": "lemma",
  "lexical_name": "lie_end_of_apply_eq_smul",
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
  "slug": "lie-end-of-apply-eq-smul--46a2596bb45be38efebba86c",
  "source": {
    "blob": "909c5ecabc3fe926ea1529c2918cab4ae1347a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1148,
    "line": 1119,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a2596bb45be38efebba86ca3265539ea9e2747d8bfb0ec95bf2725276a3225",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b82f6d1d-9ce3-36d9-89f6-f7cd3d09596a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1119–1148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_end_of_apply_eq_smul {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    (b : Basis ι R M) (a : ι → R) (s : Module.End R M)
    (hs : ∀ k, s (b k) = a k • b k) (i j : ι) :
    ⁅s, b.end (i, j)⁆ = (a i - a j) • b.end (i, j) := by
  refine b.ext fun k ↦ ?_
  simp only [Ring.lie_def, LinearMap.sub_apply, End.mul_apply, LinearMap.smul_apply,
    Basis.end_apply_apply, smul_ite, smul_zero, sub_smul]
  rcases eq_or_ne j k with rfl | hjk
  · simp [hs, Basis.end_apply_apply]
  · simp [hs, Basis.end_apply_apply, hjk]

end Module.Basis

section

variable (ι : Type*) [Fintype ι] [DecidableEq ι]
variable (R : Type*) [CommSemiring R]
variable (A : Type*) [Semiring A] [Algebra R A]
variable (M : Type*) [AddCommMonoid M] [Module R M] [Module A M] [IsScalarTower R A M]

set_option backward.isDefEq.respectTransparency false in
/--
Let `M` be an `A`-module. Every `A`-linear map `Mⁿ → Mⁿ` corresponds to a `n×n`-matrix whose entries
are `A`-linear maps `M → M`. In another word, we have `End(Mⁿ) ≅ Matₙₓₙ(End(M))` defined by:
`(f : Mⁿ → Mⁿ) ↦ (x ↦ f (0, ..., x at j-th position, ..., 0) i)ᵢⱼ` and
`m : Matₙₓₙ(End(M)) ↦ (v ↦ ∑ⱼ mᵢⱼ(vⱼ))`.

See also `LinearMap.toMatrix'`
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean#L1119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `909c5ecabc3fe926ea1529c2918cab4ae1347a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
