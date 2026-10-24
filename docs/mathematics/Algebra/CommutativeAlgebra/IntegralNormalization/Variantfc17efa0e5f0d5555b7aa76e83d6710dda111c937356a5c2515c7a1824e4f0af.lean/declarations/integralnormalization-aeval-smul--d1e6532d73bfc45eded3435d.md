# integralNormalization_aeval_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:405a612f-856f-71c5-2e20-203fcf968263",
  "kind": "lemma",
  "lexical_name": "integralNormalization_aeval_smul",
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
  "slug": "integralnormalization-aeval-smul--d1e6532d73bfc45eded3435d",
  "source": {
    "blob": "a925e5e159acb43ee2da9ca8b57482ec40d3ddb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 158,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1e6532d73bfc45eded3435dd4f9f6bb889d38274619491df8bb49b88986b9ae",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405a612f-856f-71c5-2e20-203fcf968263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integralNormalization_aeval_smul {R} [CommSemiring R] [Algebra R S] {p : R[X]}
    (h : 1 ≤ p.natDegree) (x : S) :
    p.integralNormalization.aeval (p.leadingCoeff • x) =
      p.leadingCoeff ^ (p.natDegree - 1) • p.aeval x := by
  simp_rw [Algebra.smul_def, map_pow]
  exact integralNormalization_eval₂_leadingCoeff_mul h _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a925e5e159acb43ee2da9ca8b57482ec40d3ddb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
