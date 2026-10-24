# sFinite_of_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887fe5ce-a549-46f9-519e-42729d9d6772",
  "kind": "theorem",
  "lexical_name": "sFinite_of_absolutelyContinuous",
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
  "slug": "sfinite-of-absolutelycontinuous--6d41e173216f1df2ac6a7211",
  "source": {
    "blob": "13b8bced081feb62dc5a16e2ce9acac3981bf1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 636,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d41e173216f1df2ac6a721180da23fc40c8d0ffd74fc34983780a0cdeffc9ee",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887fe5ce-a549-46f9-519e-42729d9d6772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sFinite_of_absolutelyContinuous {ν : Measure α} [SFinite ν] (hμν : μ ≪ ν) :
    SFinite μ := by
  rw [← Measure.restrict_add_restrict_compl (μ := μ) measurableSet_sigmaFiniteSetWRT,
    restrict_compl_sigmaFiniteSetWRT hμν]
  infer_instance

end SFinite

section Prod

variable {β : Type*} {mβ : MeasurableSpace β} {ν : Measure β} [SFinite ν]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b8bced081feb62dc5a16e2ce9acac3981bf1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
