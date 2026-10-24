# piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea82d032-5919-fdfd-2f13-47263c105931",
  "kind": "theorem",
  "lexical_name": "piecewise",
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
  "slug": "piecewise--a57b7ffb9dfa4d0ec918b4ba",
  "source": {
    "blob": "cbe6aa68c3fe25231fef687e016b63e8b5da761f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 739,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a57b7ffb9dfa4d0ec918b4ba95d6d73154952fdbd493434424c60ad253c9bbf7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea82d032-5919-fdfd-2f13-47263c105931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem piecewise {m : MeasurableSpace α} [TopologicalSpace β] {s : Set α}
    {_ : DecidablePred (· ∈ s)} (hs : MeasurableSet s) (hf : StronglyMeasurable f)
    (hg : StronglyMeasurable g) : StronglyMeasurable (Set.piecewise s f g) := by
  refine' ⟨fun n => SimpleFunc.piecewise s hs (hf.approx n) (hg.approx n), fun x => _⟩
  by_cases hx : x ∈ s
  · simpa [@Set.piecewise_eq_of_mem _ _ _ _ _ (fun _ => Classical.propDecidable _) _ hx,
      hx] using hf.tendsto_approx x
  · simpa [@Set.piecewise_eq_of_not_mem _ _ _ _ _ (fun _ => Classical.propDecidable _) _ hx,
      hx] using hg.tendsto_approx x
#align measure_theory.strongly_measurable.piecewise MeasureTheory.StronglyMeasurable.piecewise

/-- this is slightly different from `StronglyMeasurable.piecewise`. It can be used to show
`StronglyMeasurable (ite (x=0) 0 1)` by
`exact StronglyMeasurable.ite (measurableSet_singleton 0) stronglyMeasurable_const
stronglyMeasurable_const`, but replacing `StronglyMeasurable.ite` by
`StronglyMeasurable.piecewise` in that example proof does not work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante827e8e89d68f9f3a1a3283053c762d46dbff1afcb089d469b61d6ff38cf1de0.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe6aa68c3fe25231fef687e016b63e8b5da761f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
