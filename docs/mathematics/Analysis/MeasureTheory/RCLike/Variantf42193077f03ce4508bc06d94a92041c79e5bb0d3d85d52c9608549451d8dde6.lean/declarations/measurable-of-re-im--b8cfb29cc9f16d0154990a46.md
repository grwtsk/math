# measurable_of_re_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12bd805b-5c30-b56c-c2b1-b7f22b1016b0",
  "kind": "theorem",
  "lexical_name": "measurable_of_re_im",
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
  "slug": "measurable-of-re-im--b8cfb29cc9f16d0154990a46",
  "source": {
    "blob": "11ac13cf11d0c8ac632bdd3742b45162c83a1569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8cfb29cc9f16d0154990a4644dcc5bed5734f22ea950809b1df840b7b273f56",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12bd805b-5c30-b56c-c2b1-b7f22b1016b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_re_im (hre : Measurable fun x => RCLike.re (f x))
    (him : Measurable fun x => RCLike.im (f x)) : Measurable f := by
  convert Measurable.add (M := 𝕜) (RCLike.measurable_ofReal.comp hre)
      ((RCLike.measurable_ofReal.comp him).mul_const RCLike.I)
  exact (RCLike.re_add_im _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RCLike/Variantf42193077f03ce4508bc06d94a92041c79e5bb0d3d85d52c9608549451d8dde6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11ac13cf11d0c8ac632bdd3742b45162c83a1569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
