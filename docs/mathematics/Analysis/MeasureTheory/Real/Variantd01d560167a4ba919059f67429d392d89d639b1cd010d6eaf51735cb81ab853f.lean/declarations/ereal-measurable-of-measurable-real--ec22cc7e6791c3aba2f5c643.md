# EReal.measurable_of_measurable_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1410da90-dc83-2d0c-ec63-a1495f5a68e3",
  "kind": "theorem",
  "lexical_name": "EReal.measurable_of_measurable_real",
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
  "slug": "ereal-measurable-of-measurable-real--ec22cc7e6791c3aba2f5c643",
  "source": {
    "blob": "f9778de84c492ca621edb01b9bfc4013d5c92cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 417,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec22cc7e6791c3aba2f5c643aa450d99d3727b3d2e815709cdaa0b9b8f7a0085",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1410da90-dc83-2d0c-ec63-a1495f5a68e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EReal.measurable_of_measurable_real {f : EReal → α} (h : Measurable fun p : ℝ => f p) :
    Measurable f :=
  measurable_of_measurable_on_compl_finite {⊥, ⊤} (by simp)
    (MeasurableEquiv.erealEquivReal.symm.measurable_comp_iff.1 h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9778de84c492ca621edb01b9bfc4013d5c92cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
