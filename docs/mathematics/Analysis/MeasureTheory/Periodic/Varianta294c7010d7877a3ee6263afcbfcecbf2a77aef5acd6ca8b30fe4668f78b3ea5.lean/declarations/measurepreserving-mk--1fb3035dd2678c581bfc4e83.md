# measurePreserving_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d35a690e6dbedf6d86d523ab875a305a0e1b705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:884293e4-48c8-aee2-9b64-8b6cb9d244c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b73e65e-e3d5-e005-2522-9974543a680b",
  "kind": "theorem",
  "lexical_name": "measurePreserving_mk",
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
  "slug": "measurepreserving-mk--1fb3035dd2678c581bfc4e83",
  "source": {
    "blob": "6d35a690e6dbedf6d86d523ab875a305a0e1b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb3035dd2678c581bfc4e839145a65a33d600a2c75034cd8f155e7825b28d09",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b73e65e-e3d5-e005-2522-9974543a680b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem measurePreserving_mk (t : ℝ) :
    MeasurePreserving (β := UnitAddCircle) ((↑) : ℝ → UnitAddCircle)
      (volume.restrict (Ioc t (t + 1))) :=
  AddCircle.measurePreserving_mk 1 t
#align unit_add_circle.measure_preserving_mk UnitAddCircle.measurePreserving_mk

/-- The integral of a measurable function over `UnitAddCircle` is equal to the integral over an
interval (t, t + 1] in `ℝ` of its lift to `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d35a690e6dbedf6d86d523ab875a305a0e1b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
