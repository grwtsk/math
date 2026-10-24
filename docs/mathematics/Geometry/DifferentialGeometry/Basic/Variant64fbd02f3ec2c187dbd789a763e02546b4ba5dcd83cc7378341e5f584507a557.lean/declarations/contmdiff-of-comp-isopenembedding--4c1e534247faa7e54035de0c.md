# ContMDiff.of_comp_isOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e398698-1764-1ba3-7fcb-6a5a2920ef6f",
  "kind": "lemma",
  "lexical_name": "ContMDiff.of_comp_isOpenEmbedding",
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
  "slug": "contmdiff-of-comp-isopenembedding--4c1e534247faa7e54035de0c",
  "source": {
    "blob": "5296fbb115576f051f88f25372a75764296adb9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 422,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c1e534247faa7e54035de0c05e8502c8eb22676b1859bee394a442610de730e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e398698-1764-1ba3-7fcb-6a5a2920ef6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.of_comp_isOpenEmbedding {f : M → M'} (hf : ContMDiff I I' n (e' ∘ f)) :
    haveI := h'.singletonChartedSpace; ContMDiff I I' n f := by
  have : f = (h'.toPartialHomeomorph e').symm ∘ e' ∘ f := by
    ext
    rw [Function.comp_apply, Function.comp_apply, IsOpenEmbedding.toPartialHomeomorph_left_inv]
  rw [this]
  apply @ContMDiffOn.comp_contMDiff _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    h'.singletonChartedSpace _ _ (range e') _ (contMDiffOn_isOpenEmbedding_symm h') hf
  simp

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant64fbd02f3ec2c187dbd789a763e02546b4ba5dcd83cc7378341e5f584507a557.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5296fbb115576f051f88f25372a75764296adb9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
