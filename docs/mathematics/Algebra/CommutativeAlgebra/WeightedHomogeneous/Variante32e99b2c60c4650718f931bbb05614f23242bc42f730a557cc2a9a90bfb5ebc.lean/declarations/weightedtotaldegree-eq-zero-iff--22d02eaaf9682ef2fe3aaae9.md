# weightedTotalDegree_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e73402-eaf1-d97d-33b9-2ddd5fb5ffde",
  "kind": "theorem",
  "lexical_name": "weightedTotalDegree_eq_zero_iff",
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
  "slug": "weightedtotaldegree-eq-zero-iff--22d02eaaf9682ef2fe3aaae9",
  "source": {
    "blob": "618b32e32b5110dc0a7807a5b3d7d6cdc45c7e85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 640,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variante32e99b2c60c4650718f931bbb05614f23242bc42f730a557cc2a9a90bfb5ebc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22d02eaaf9682ef2fe3aaae92a239ed73bb2475bf41a79ef742e31c53a260ee8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variante32e99b2c60c4650718f931bbb05614f23242bc42f730a557cc2a9a90bfb5ebc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e73402-eaf1-d97d-33b9-2ddd5fb5ffde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedTotalDegree_eq_zero_iff (hw : NonTorsionWeight w) (p : MvPolynomial σ R) :
    p.weightedTotalDegree w = 0 ↔ ∀ (m : σ →₀ ℕ) (_ : m ∈ p.support) (x : σ), m x = 0 := by
  rw [← isWeightedHomogeneous_zero_iff_weightedTotalDegree_eq_zero, IsWeightedHomogeneous]
  apply forall_congr'
  intro m
  rw [mem_support_iff]
  apply forall_congr'
  intro _
  exact weightedDegree_eq_zero_iff hw

end LinearOrderedAddCommMonoid

section GradedAlgebra

/- Here, given a weight `w : σ → M`, where `M` is an additive and commutative monoid, we endow the
  ring of multivariate polynomials `MvPolynomial σ R` with the structure of a graded algebra -/
variable (w : σ → M) [AddCommMonoid M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variante32e99b2c60c4650718f931bbb05614f23242bc42f730a557cc2a9a90bfb5ebc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variante32e99b2c60c4650718f931bbb05614f23242bc42f730a557cc2a9a90bfb5ebc.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618b32e32b5110dc0a7807a5b3d7d6cdc45c7e85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
