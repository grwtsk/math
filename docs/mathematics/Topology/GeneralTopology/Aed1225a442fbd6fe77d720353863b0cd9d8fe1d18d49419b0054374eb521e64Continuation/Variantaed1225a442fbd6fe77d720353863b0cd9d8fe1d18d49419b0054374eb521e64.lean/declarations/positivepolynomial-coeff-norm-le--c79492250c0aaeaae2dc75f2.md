# positivePolynomial_coeff_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:831f244a-9b0c-9e9a-076d-61383413ef3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:775f97b5-9499-16e1-228b-7d0dd552c0fe",
  "kind": "theorem",
  "lexical_name": "positivePolynomial_coeff_norm_le",
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
  "slug": "positivepolynomial-coeff-norm-le--c79492250c0aaeaae2dc75f2",
  "source": {
    "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79492250c0aaeaae2dc75f28acd8a8c71186fc530810ac3ad23c09b7555476d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775f97b5-9499-16e1-228b-7d0dd552c0fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePolynomial_coeff_norm_le
    (z : ℂ) (hz : 1 ≤ ‖z‖)
    (k : ℕ) (hk : k ≤ 8) :
    ‖(positivePolynomial z).coeff k‖ ≤
      22050 * ‖z‖ ^ 8 := by
  rw [positivePolynomial_coeff z k hk, norm_mul,
    norm_pow]
  have hp :
      ‖z‖ ^ k ≤ ‖z‖ ^ 8 :=
    pow_le_pow_right₀ hz hk
  have hr : ‖rCoeff k‖ ≤ 22050 := by
    interval_cases k <;> norm_num [rCoeff]
  calc
    ‖rCoeff k‖ * ‖z‖ ^ k ≤ 22050 * ‖z‖ ^ k :=
      mul_le_mul_of_nonneg_right hr (pow_nonneg (norm_nonneg z) _)
    _ ≤ 22050 * ‖z‖ ^ 8 :=
      mul_le_mul_of_nonneg_left hp (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
