# EisensteinSeries.q_expansion_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80040667ea0c83c8d9107340fbcd872753405572",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b3a8c12-d626-991e-f83b-60c713fc2e2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:025b27e6-b591-fb0a-27bb-0a14333cc7ad",
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
  "slug": "eisensteinseries-q-expansion-bernoulli--4bc81ffccb8bdd6bbeb6ab5a",
  "source": {
    "blob": "80040667ea0c83c8d9107340fbcd872753405572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 299,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc81ffccb8bdd6bbeb6ab5ac35b4067945976ac411f021ea0b8680ac00297ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025b27e6-b591-fb0a-27bb-0a14333cc7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–311.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80040667ea0c83c8d9107340fbcd872753405572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
