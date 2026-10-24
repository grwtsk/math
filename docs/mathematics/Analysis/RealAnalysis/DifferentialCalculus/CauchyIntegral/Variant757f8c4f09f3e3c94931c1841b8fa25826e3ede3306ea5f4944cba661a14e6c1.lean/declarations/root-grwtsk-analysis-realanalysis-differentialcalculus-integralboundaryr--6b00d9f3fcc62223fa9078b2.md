# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.DiffContOnCl.circleIntegral_one_div_sub_center_pow_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d96b3f2-dc2f-219a-9c03-2a041b3a67cc",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.DiffContOnCl.circleIntegral_one_div_sub_center_pow_smul",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-integralboundaryr--6b00d9f3fcc62223fa9078b2",
  "source": {
    "blob": "9c3f33e447140df81d476543d132983de6c0f1f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 839,
    "line": 831,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant757f8c4f09f3e3c94931c1841b8fa25826e3ede3306ea5f4944cba661a14e6c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b00d9f3fcc62223fa9078b294c1a39de0d60f12eb81ca016ea1f99f304bdcaf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant757f8c4f09f3e3c94931c1841b8fa25826e3ede3306ea5f4944cba661a14e6c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d96b3f2-dc2f-219a-9c03-2a041b3a67cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–839.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IntegralBoundaryRectOfHasFDerivAtRealOffCountable.Variant25c76fe24a2fcc04f6eadd8353f9be268611f8f8eeaf3f119dcaf7d140b7d33f.DiffContOnCl.circleIntegral_one_div_sub_center_pow_smul
    (h0 : 0 < R) (n : ℕ) (hc : DiffContOnCl ℂ f (ball c R)) :
    ∮ z in C(c, R), (1 / (z - c) ^ (n + 1)) • f z
      = (2 * π * I / n.factorial) • iteratedDeriv n f c :=
  c.circleIntegral_one_div_sub_center_pow_smul_of_differentiable_on_off_countable h0 n
    Set.countable_empty hc.continuousOn_ball fun _ hx ↦ hc.differentiableAt isOpen_ball hx.1

/-- **Cauchy integral formula for the first order derivative**, assuming `f` is continuous on a
closed ball and differentiable on its interior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant757f8c4f09f3e3c94931c1841b8fa25826e3ede3306ea5f4944cba661a14e6c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant757f8c4f09f3e3c94931c1841b8fa25826e3ede3306ea5f4944cba661a14e6c1.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3f33e447140df81d476543d132983de6c0f1f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
