# swapLeft_prodMkRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1e35a94-23f3-c486-511a-a63498d2192b",
  "kind": "lemma",
  "lexical_name": "swapLeft_prodMkRight",
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
  "slug": "swapleft-prodmkright--92e89bf95755574ff7716827",
  "source": {
    "blob": "3daf95913bd472020326a4d37b86bb8327f80fa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 362,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e89bf95755574ff771682769c1687f53e40a397a4e08a15a9e039fe6d638c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e35a94-23f3-c486-511a-a63498d2192b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma swapLeft_prodMkRight (κ : Kernel α β) (γ : Type*) {_ : MeasurableSpace γ} :
    swapLeft (prodMkRight γ κ) = prodMkLeft γ κ := rfl

/-- Define a `Kernel α (γ × β)` from a `Kernel α (β × γ)` by taking the map of `Prod.swap`.
We use `mapOfMeasurable` in the definition for better defeqs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daf95913bd472020326a4d37b86bb8327f80fa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
