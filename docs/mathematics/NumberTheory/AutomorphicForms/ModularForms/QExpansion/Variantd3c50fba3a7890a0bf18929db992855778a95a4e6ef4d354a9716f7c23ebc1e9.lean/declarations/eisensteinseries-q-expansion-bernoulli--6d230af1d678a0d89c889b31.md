# EisensteinSeries.q_expansion_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8c8e0a2-073b-d8a1-6a7f-ee7dcdd4dde9",
  "kind": "lemma",
  "lexical_name": "EisensteinSeries.q_expansion_bernoulli",
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
  "slug": "eisensteinseries-q-expansion-bernoulli--6d230af1d678a0d89c889b31",
  "source": {
    "blob": "88cc488f2db65abe80b44588cd5be219a228526d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 307,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d230af1d678a0d89c889b31d21efc2dbf9f75aab906b926c8c4bbd6aaf333ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c8e0a2-073b-d8a1-6a7f-ee7dcdd4dde9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EisensteinSeries.q_expansion_bernoulli {k : ℕ} (hk : 3 ≤ k) (hk2 : Even k) (z : ℍ) :
    E hk z = 1 - (2 * k / bernoulli k) *
    ∑' n : ℕ+, σ (k - 1) n * cexp (2 * π * I * z) ^ (n : ℤ) := by
  convert! q_expansion_riemannZeta hk hk2 z using 1
  rw [eisensteinSeries_coeff_identity hk2 (by grind), neg_mul, ← sub_eq_add_neg]

section NonZero

open ModularFormClass

local notation "𝕢" => Periodic.qParam

/-- Summability of the divisor-sum q-expansion series `∑ σ_{k-1}(n) q^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variantd3c50fba3a7890a0bf18929db992855778a95a4e6ef4d354a9716f7c23ebc1e9.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88cc488f2db65abe80b44588cd5be219a228526d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
