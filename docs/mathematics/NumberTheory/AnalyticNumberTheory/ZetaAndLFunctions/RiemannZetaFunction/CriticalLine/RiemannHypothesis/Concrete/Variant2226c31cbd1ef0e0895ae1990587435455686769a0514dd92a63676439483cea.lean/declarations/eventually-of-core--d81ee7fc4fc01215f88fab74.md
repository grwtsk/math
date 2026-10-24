# eventually_of_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b6bd391-9921-e816-0c37-be355004dc9b",
  "kind": "lemma",
  "lexical_name": "eventually_of_core",
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
  "slug": "eventually-of-core--d81ee7fc4fc01215f88fab74",
  "source": {
    "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81ee7fc4fc01215f88fab747599b8a0cec2b146c1ddfc4eccfef583df0c8ba6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6bd391-9921-e816-0c37-be355004dc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_of_core {T₁ : ℝ} (hT₁ : ∀ T : ℝ, T₁ ≤ T → LocalHypsCore cW (P.toSetting T) (Fw P win T))
    {Q : Setting → LocalFun → Prop} {T₀ : ℝ}
    (h : ∀ (p : Setting) (F : LocalFun), p.lam = P.lam → T₀ ≤ p.T → LocalHypsCore cW p F → Q p F) :
    ∀ᶠ T in atTop, Q (P.toSetting T) (Fw P win T) := by
  filter_upwards [eventually_ge_atTop (max T₀ T₁)] with T hT
  exact h _ _ rfl ((le_max_left _ _).trans hT) (hT₁ T ((le_max_right _ _).trans hT))

set_option maxHeartbeats 3200000 in
/-- **FactsXi for the concrete data.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
