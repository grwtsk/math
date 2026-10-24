# analyticOrderAt_hardyW_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d28ede2b-c38f-7394-fde8-41077c39befc",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_hardyW_ne_top",
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
  "slug": "analyticorderat-hardyw-ne-top--6b99e233543ac109289650f6",
  "source": {
    "blob": "9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b99e233543ac109289650f637a7d0b4da3cf92507ade63b506eecc08fa8f5a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d28ede2b-c38f-7394-fde8-41077c39befc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderAt_hardyW_ne_top {s : ℂ} (hs : s.im ≠ 0) : analyticOrderAt hardyW s ≠ ⊤ := by
  intro htop
  rw [analyticOrderAt_eq_top] at htop
  rcases lt_or_gt_of_ne hs with hneg | hpos
  · -- lower half-plane
    have hU : IsPreconnected {z : ℂ | z.im < 0} := (convex_halfSpace_im_lt 0).isPreconnected
    have hall : EqOn hardyW 0 {z : ℂ | z.im < 0} :=
      (hardyW_analyticOnNhd.mono fun z (hz : z.im < 0) => hz.ne).eqOn_zero_of_preconnected_of_eventuallyEq_zero
        hU hneg htop
    obtain ⟨z, hz, hne⟩ := exists_hardyW_ne_zero_lower
    exact hne (hall hz)
  · have hU : IsPreconnected {z : ℂ | 0 < z.im} := (convex_halfSpace_im_gt 0).isPreconnected
    have hall : EqOn hardyW 0 {z : ℂ | 0 < z.im} :=
      (hardyW_analyticOnNhd.mono fun z (hz : 0 < z.im) => hz.ne').eqOn_zero_of_preconnected_of_eventuallyEq_zero
        hU hpos htop
    obtain ⟨z, hz, hne⟩ := exists_hardyW_ne_zero_upper
    exact hne (hall hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
