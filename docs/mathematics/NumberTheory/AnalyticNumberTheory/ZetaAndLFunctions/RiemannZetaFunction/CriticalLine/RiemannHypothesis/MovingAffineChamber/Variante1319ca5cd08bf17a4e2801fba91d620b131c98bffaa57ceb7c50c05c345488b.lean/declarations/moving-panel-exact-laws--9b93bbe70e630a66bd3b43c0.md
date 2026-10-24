# moving_panel_exact_laws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e1ae77-88e3-a3ac-e0ce-e4b18cb640f7",
  "kind": "theorem",
  "lexical_name": "moving_panel_exact_laws",
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
  "slug": "moving-panel-exact-laws--9b93bbe70e630a66bd3b43c0",
  "source": {
    "blob": "4be9a7a9b1d5e127d818b00e5363acd043ac6f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variante1319ca5cd08bf17a4e2801fba91d620b131c98bffaa57ceb7c50c05c345488b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b93bbe70e630a66bd3b43c0131cc911e4af1b598d7f0a7845c7e7ad8aa0aa73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variante1319ca5cd08bf17a4e2801fba91d620b131c98bffaa57ceb7c50c05c345488b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e1ae77-88e3-a3ac-e0ce-e4b18cb640f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moving_panel_exact_laws {a b : ℝ → ℝ} {l : ℝ}
    (hab : a l < b l) :
    AffineAccordionWeld.fold (a l) (b l) (a l) = -1 ∧
    AffineAccordionWeld.fold (a l) (b l) (b l) = 1 ∧
    (∀ x ∈ Set.Icc (a l) (b l),
      AffineAccordionWeld.fold (a l) (b l) x ∈ Set.Icc (-1 : ℝ) 1) ∧
    (∀ s, AffineAccordionWeld.fold (a l) (b l)
      (AffineAccordionWeld.unfoldPoint (a l) (b l) s) = s) :=
  ⟨AffineAccordionWeld.fold_left _ _,AffineAccordionWeld.fold_right hab,
    fun _ hx => AffineAccordionWeld.fold_maps_unit hab hx,
    AffineAccordionWeld.fold_unfold hab⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variante1319ca5cd08bf17a4e2801fba91d620b131c98bffaa57ceb7c50c05c345488b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MovingAffineChamber/Variante1319ca5cd08bf17a4e2801fba91d620b131c98bffaa57ceb7c50c05c345488b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be9a7a9b1d5e127d818b00e5363acd043ac6f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
