# _root_.GRWTSK.Algebra.LinearAlgebra.MvPowerSeries.Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.MvPowerSeries.prod_smul_X_eq_smul_monomial_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa2397f-3e57-67a7-f3f4-e43a4d87f89a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.MvPowerSeries.Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.MvPowerSeries.prod_smul_X_eq_smul_monomial_one",
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
  "slug": "root-grwtsk-algebra-linearalgebra-mvpowerseries-variantc28a1e22ab920016e--c501034cfebb7ccf8ad5e2cf",
  "source": {
    "blob": "2ad6a0785b418a03f95f7bcc1013b685fd1006cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 906,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c501034cfebb7ccf8ad5e2cfab208fafcfb37b8f2cdf07ce9d55a74a584467e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa2397f-3e57-67a7-f3f4-e43a4d87f89a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.MvPowerSeries.Variantc28a1e22ab920016e9ad1c393db335c7007d34a21a40a3d53bf65e153351036b.MvPowerSeries.prod_smul_X_eq_smul_monomial_one
    {A : Type*} [CommSemiring A] [Algebra A R] (e : σ →₀ ℕ) (a : σ → A) :
    e.prod (fun s n ↦ ((a s • MvPowerSeries.X s) ^ n))
      = (e.prod fun s n ↦ (a s) ^ n) • MvPowerSeries.monomial R e 1 := by
  rw [Finsupp.prod_congr
    (g2 := fun s n ↦ ((MvPowerSeries.C σ R (algebraMap A R (a s)) * (MvPowerSeries.X s)) ^ n))]
  · have (a : A) (f : MvPowerSeries σ R) : a • f =
      (MvPowerSeries.C σ R) ((algebraMap A R) a) * f := by
      rw [← MvPowerSeries.smul_eq_C_mul, IsScalarTower.algebraMap_smul]
    simp only [mul_pow, Finsupp.prod_mul, ← map_pow , ← MvPowerSeries.monomial_one_eq, this]
    simp only [map_finsuppProd, map_pow]
  · intro x _
    rw [algebra_compatible_smul R, MvPowerSeries.smul_eq_C_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad6a0785b418a03f95f7bcc1013b685fd1006cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
