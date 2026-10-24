# measurable_set_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a32c8622-98ee-b269-444b-142e64dd2c49",
  "kind": "lemma",
  "lexical_name": "measurable_set_notMem",
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
  "slug": "measurable-set-notmem--8bb25b6225483da3042e5c56",
  "source": {
    "blob": "d2d85571d9a38f90bf9905fa7340626026458abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 866,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb25b6225483da3042e5c56361de95c6b39a8fae9239bf279a87725e30ec56c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a32c8622-98ee-b269-444b-142e64dd2c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_set_notMem (a : α) : Measurable fun s : Set α ↦ a ∉ s :=
  (Measurable.of_discrete (f := Not)).comp <| measurable_set_mem a

@[deprecated (since := "2025-05-23")] alias measurable_set_not_mem := measurable_set_notMem

@[aesop safe 100 apply (rule_sets := [Measurable])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variantd8f504275e4e7bde1831c2b374a1880122c32873628536c4b1f050e6b1ee6ed7.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2d85571d9a38f90bf9905fa7340626026458abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
