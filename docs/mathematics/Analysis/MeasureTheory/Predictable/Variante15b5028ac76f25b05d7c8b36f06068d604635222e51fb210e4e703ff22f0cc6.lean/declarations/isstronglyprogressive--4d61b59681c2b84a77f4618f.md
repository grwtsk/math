# isStronglyProgressive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:452a00fc-359a-17d1-f0c8-b38281298c5c",
  "kind": "lemma",
  "lexical_name": "isStronglyProgressive",
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
  "slug": "isstronglyprogressive--4d61b59681c2b84a77f4618f",
  "source": {
    "blob": "bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d61b59681c2b84a77f4618f3e79e19fbb9ba6fbdfc4663c67d081d8b025e3df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:452a00fc-359a-17d1-f0c8-b38281298c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isStronglyProgressive {𝓕 : Filtration ι m} {u : ι → Ω → E} (h𝓕 : IsStronglyPredictable 𝓕 u) :
    IsStronglyProgressive 𝓕 u := by
  intro i
  let : MeasurableSpace (ι × Ω) := 𝓕.predictable
  let : MeasurableSpace (Set.Iic i × Ω) := Subtype.instMeasurableSpace.prod (𝓕 i)
  let X m (x : Set.Iic i × Ω) := h𝓕.approx m ⟨x.1, x.2⟩
  refine ⟨fun m ↦ SimpleFunc.mk (X m) ?_ ?_, ?_⟩
  · exact fun e ↦ measurable_inclusion_predictable <| (h𝓕.approx m).measurableSet_fiber e
  · exact Set.Finite.subset (h𝓕.approx m).finite_range (by grind)
  · exact fun n ↦ by apply h𝓕.tendsto_approx

/-- A predictable process is adapted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variante15b5028ac76f25b05d7c8b36f06068d604635222e51fb210e4e703ff22f0cc6.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf59fcac61d4f8f141c29f31ccc08b6f0cbf3727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
