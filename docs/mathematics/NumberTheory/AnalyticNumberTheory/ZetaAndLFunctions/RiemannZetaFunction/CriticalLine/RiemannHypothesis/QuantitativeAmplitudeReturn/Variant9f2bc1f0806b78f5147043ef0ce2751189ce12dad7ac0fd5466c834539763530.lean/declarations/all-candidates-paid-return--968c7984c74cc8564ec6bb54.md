# all_candidates_paid_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da040e87-df5e-a913-e820-85338932acf5",
  "kind": "theorem",
  "lexical_name": "all_candidates_paid_return",
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
  "slug": "all-candidates-paid-return--968c7984c74cc8564ec6bb54",
  "source": {
    "blob": "86fba0de27bcd87e3824e7030cf3693b746754fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:968c7984c74cc8564ec6bb547345f9c67a0c7e497b4131d06227f2ad82d517a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da040e87-df5e-a913-e820-85338932acf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_candidates_paid_return (candidates : ℝ → Set ℝ)
    (retained error : ℝ → ℝ → ℝ) (baseline : ℝ → ℝ)
    {R D C p q : ℝ} (hR : 1 ≤ R) (hD : 0 ≤ D) (hC : 0 ≤ C)
    (hexact : ∀ A, R ≤ A → ∀ h ∈ candidates A, h = retained A h + error A h)
    (herror : ∀ A, R ≤ A → ∀ h ∈ candidates A, |error A h| ≤ C * A ^ q)
    (hretained : ∀ A, R ≤ A → ∀ h ∈ candidates A,
      retained A h ≤ baseline A + D * A ^ p) :
    ∀ A, R ≤ A → ∀ h ∈ candidates A,
      h ≤ baseline A + (D + C) * A ^ (max p q) := by
  intro A hA h hh
  exact paid_candidate_return (hR.trans hA) hD hC
    (hexact A hA h hh) (herror A hA h hh) (hretained A hA h hh)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86fba0de27bcd87e3824e7030cf3693b746754fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
