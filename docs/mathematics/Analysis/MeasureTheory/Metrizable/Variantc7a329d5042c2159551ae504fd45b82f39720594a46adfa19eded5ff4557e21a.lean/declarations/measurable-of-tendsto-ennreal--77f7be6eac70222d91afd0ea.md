# measurable_of_tendsto_ennreal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e53e57-0c44-aee8-2fe6-b7a08f664647",
  "kind": "theorem",
  "lexical_name": "measurable_of_tendsto_ennreal'",
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
  "slug": "measurable-of-tendsto-ennreal--77f7be6eac70222d91afd0ea",
  "source": {
    "blob": "f73e1446affd40b5b4d32215dd098d03b7020b54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f7be6eac70222d91afd0eacce8abddfa56dc14123de3ee7ef48d07e4250951",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e53e57-0c44-aee8-2fe6-b7a08f664647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_tendsto_ennreal' {ι} {f : ι → α → ℝ≥0∞} {g : α → ℝ≥0∞} (u : Filter ι)
    [NeBot u] [IsCountablyGenerated u] (hf : ∀ i, Measurable (f i)) (lim : Tendsto f u (𝓝 g)) :
    Measurable g := by
  rcases u.exists_seq_tendsto with ⟨x, hx⟩
  rw [tendsto_pi_nhds] at lim
  have : (fun y => liminf (fun n => (f (x n) y : ℝ≥0∞)) atTop) = g := by
    ext1 y
    exact ((lim y).comp hx).liminf_eq
  rw [← this]
  show Measurable fun y => liminf (fun n => (f (x n) y : ℝ≥0∞)) atTop
  exact measurable_liminf fun n => hf (x n)
#align measurable_of_tendsto_ennreal' measurable_of_tendsto_ennreal'

/-- A sequential limit of measurable `ℝ≥0∞` valued functions is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73e1446affd40b5b4d32215dd098d03b7020b54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
