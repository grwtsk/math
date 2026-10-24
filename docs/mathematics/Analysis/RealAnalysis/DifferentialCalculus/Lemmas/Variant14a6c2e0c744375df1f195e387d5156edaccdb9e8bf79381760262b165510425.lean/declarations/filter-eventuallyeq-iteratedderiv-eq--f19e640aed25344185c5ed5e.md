# Filter.EventuallyEq.iteratedDeriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03cac4b7-c663-2d25-de37-015038d0f1d1",
  "kind": "lemma",
  "lexical_name": "Filter.EventuallyEq.iteratedDeriv_eq",
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
  "slug": "filter-eventuallyeq-iteratedderiv-eq--f19e640aed25344185c5ed5e",
  "source": {
    "blob": "f7f6a3e114a5cadda1f53a936d7244aa26f19381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f19e640aed25344185c5ed5eb4c01b1c3d6db61100f6f6e4dd2fd8058a62b73e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03cac4b7-c663-2d25-de37-015038d0f1d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Filter.EventuallyEq.iteratedDeriv_eq (n : ℕ) {f g : 𝕜 → F} {x : 𝕜} (hfg : f =ᶠ[𝓝 x] g) :
    iteratedDeriv n f x = iteratedDeriv n g x := by
  simp only [← iteratedDerivWithin_univ, iteratedDerivWithin_eq_iteratedFDerivWithin]
  rw [(hfg.filter_mono nhdsWithin_le_nhds).iteratedFDerivWithin_eq hfg.eq_of_nhds n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7f6a3e114a5cadda1f53a936d7244aa26f19381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
