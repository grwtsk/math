# strictSAC_iff_sacEntry_eq_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:599d6e93-9efb-c9d3-0742-0168157b2186",
  "kind": "theorem",
  "lexical_name": "strictSAC_iff_sacEntry_eq_half",
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
  "slug": "strictsac-iff-sacentry-eq-half--1be39f2bbce7b082ce389975",
  "source": {
    "blob": "b0b79b548a2012dbdf9497d3caa034411d533544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1be39f2bbce7b082ce38997578fc6e0c5c08635d4a5e5e9211910f7531dafd94",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:599d6e93-9efb-c9d3-0742-0168157b2186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictSAC_iff_sacEntry_eq_half {n : Nat} (H : Bits n → Bits n) :
    StrictSAC H ↔ ∀ i j, sacEntry H i j = (1 / 2 : ℚ) := by
  constructor
  · intro h i j
    have hcast : (2 * sacCount H i j : Nat) = 2 ^ n := h i j
    have hcast' : (2 : ℚ) * sacCount H i j = (2 ^ n : Nat) := by
      exact_mod_cast hcast
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)]
    norm_num at hcast'
    nlinarith
  · intro h i j
    have hij := h i j
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)] at hij
    have hcast : ((2 * sacCount H i j : Nat) : ℚ) = (2 ^ n : Nat) := by
      push_cast
      nlinarith
    exact_mod_cast hcast

/-- On `[0,1]`, the doubled absolute bias is at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0b79b548a2012dbdf9497d3caa034411d533544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
