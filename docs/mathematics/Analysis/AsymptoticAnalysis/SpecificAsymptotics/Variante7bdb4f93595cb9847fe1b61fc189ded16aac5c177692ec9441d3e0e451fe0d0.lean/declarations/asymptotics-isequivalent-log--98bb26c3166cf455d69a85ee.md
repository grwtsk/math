# Asymptotics.IsEquivalent.log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73ca6c30-5ca0-b78b-2ed9-233853343560",
  "kind": "theorem",
  "lexical_name": "Asymptotics.IsEquivalent.log",
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
  "slug": "asymptotics-isequivalent-log--98bb26c3166cf455d69a85ee",
  "source": {
    "blob": "96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98bb26c3166cf455d69a85ee09866c1c1309532e9403a3a9ff536b4db283ef59",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73ca6c30-5ca0-b78b-2ed9-233853343560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Asymptotics.IsEquivalent.log {α : Type*} {l : Filter α} {f g : α → ℝ} (hfg : f ~[l] g)
    (g_tendsto : Tendsto g l atTop) :
    (fun n ↦ Real.log (f n)) ~[l] (fun n ↦ Real.log (g n)) := by
  have hg := g_tendsto.eventually_ne_atTop 0
  have hf := hfg.symm.tendsto_atTop g_tendsto |>.eventually_ne_atTop 0
  rw [isEquivalent_iff_tendsto_one hg] at hfg
  have := hfg.log (by norm_num) |>.congr' <| by
    filter_upwards [hf, hg] with n hf hg using Real.log_div hf hg
  exact IsLittleO.isEquivalent <| calc
    (fun n ↦ Real.log (f n) - Real.log (g n)) =o[l] fun _ ↦ (1 : ℝ) := by simpa
    _ =o[l] fun n ↦ Real.log (g n) := isLittleO_one_left_iff ℝ |>.mpr <|
      tendsto_norm_atTop_atTop.comp <| Real.tendsto_log_atTop.comp g_tendsto

open Finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
