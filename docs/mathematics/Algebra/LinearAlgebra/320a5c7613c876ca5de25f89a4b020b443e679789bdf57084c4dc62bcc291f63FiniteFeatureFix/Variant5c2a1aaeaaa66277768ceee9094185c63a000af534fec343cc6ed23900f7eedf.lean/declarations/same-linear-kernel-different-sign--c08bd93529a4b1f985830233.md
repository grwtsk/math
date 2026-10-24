# same_linear_kernel_different_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97533b45-cd5a-556b-37f0-d0c389589179",
  "kind": "theorem",
  "lexical_name": "same_linear_kernel_different_sign",
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
  "slug": "same-linear-kernel-different-sign--c08bd93529a4b1f985830233",
  "source": {
    "blob": "66803dc05c9bc68af5cf00f2131c46e8a4364718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant5c2a1aaeaaa66277768ceee9094185c63a000af534fec343cc6ed23900f7eedf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c08bd93529a4b1f985830233061b85a9f697b9f5080c7054e9d8b829fb318d12",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant5c2a1aaeaaa66277768ceee9094185c63a000af534fec343cc6ed23900f7eedf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97533b45-cd5a-556b-37f0-d0c389589179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_linear_kernel_different_sign :
    (∀ x : ℝ × ℝ, positiveOperator x = 0 ↔ indefiniteOperator x = 0) ∧
      ((1, 0) : ℝ × ℝ).1 * (positiveOperator (1, 0)).1 +
          ((1, 0) : ℝ × ℝ).2 * (positiveOperator (1, 0)).2 = 1 ∧
      ((1, 0) : ℝ × ℝ).1 * (indefiniteOperator (1, 0)).1 +
          ((1, 0) : ℝ × ℝ).2 * (indefiniteOperator (1, 0)).2 = -1 := by
  constructor
  · intro x
    simp [positiveOperator, indefiniteOperator, Prod.ext_iff]
  · norm_num [positiveOperator, indefiniteOperator]

end

end FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures


#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.rationalWeight_pos
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.rationalWeight_pos

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.retained_energy
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.retained_energy

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.protected_null
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.protected_null

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.protected_quotient
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.protected_quotient

#print FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.same_linear_kernel_different_sign
#print axioms FormalResearch.PositiveAtlas.FiniteFeatureGeometry.RecoveryFixtures.same_linear_kernel_different_sign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant5c2a1aaeaaa66277768ceee9094185c63a000af534fec343cc6ed23900f7eedf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant5c2a1aaeaaa66277768ceee9094185c63a000af534fec343cc6ed23900f7eedf.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66803dc05c9bc68af5cf00f2131c46e8a4364718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
