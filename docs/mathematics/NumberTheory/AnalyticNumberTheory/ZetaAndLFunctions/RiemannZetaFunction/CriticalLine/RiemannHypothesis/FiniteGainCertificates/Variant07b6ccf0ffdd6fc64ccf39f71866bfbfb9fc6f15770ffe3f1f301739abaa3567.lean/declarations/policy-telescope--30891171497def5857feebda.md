# policy_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b56153bc-d0b2-1fdc-fb89-dfc3826e1c5c",
  "kind": "theorem",
  "lexical_name": "policy_telescope",
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
  "slug": "policy-telescope--30891171497def5857feebda",
  "source": {
    "blob": "cf07b0200f130bc33f8dc81d5ac250dbffb491b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variant07b6ccf0ffdd6fc64ccf39f71866bfbfb9fc6f15770ffe3f1f301739abaa3567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30891171497def5857feebda4051f385ba3ef7b6e2e863144ac23167c43b6333",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variant07b6ccf0ffdd6fc64ccf39f71866bfbfb9fc6f15770ffe3f1f301739abaa3567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b56153bc-d0b2-1fdc-fb89-dfc3826e1c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem policy_telescope {S X : Type*} (legal : S → X → S → Prop)
    (gain : S → X → S → ℝ) (h : S → ℝ) (policy : S → X)
    (hp : CertifiedPolicy legal gain h policy) (s : ℕ → S)
    (q e : ℕ → ℝ) (N : ℕ)
    (hl : ∀ i < N, legal (s i) (policy (s i)) (s (i + 1)))
    (hb : ∀ i < N, gain (s i) (policy (s i)) (s (i + 1)) - e i ≤ q i) :
    h (s N) - h (s 0) - ∑ i ∈ Finset.range N, e i ≤
      ∑ i ∈ Finset.range N, q i :=
  telescope s h _ q e N (fun i hi => hp _ _ (hl i hi)) hb

/-- A terminal estimate needs the combined potential/error budget for that terminal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variant07b6ccf0ffdd6fc64ccf39f71866bfbfb9fc6f15770ffe3f1f301739abaa3567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variant07b6ccf0ffdd6fc64ccf39f71866bfbfb9fc6f15770ffe3f1f301739abaa3567.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf07b0200f130bc33f8dc81d5ac250dbffb491b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
