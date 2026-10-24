# Regular.domSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37f42840f1f83784110328b06aa3c3c8471dd01061172b3c37b2410f747b4306",
  "kind": "instance",
  "lexical_name": "Regular.domSMul",
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
  "slug": "regular-domsmul--b38129b8f34ef0c8c48784f7",
  "source": {
    "blob": "f215bc1599fd5074d27350093866a6fb97eb647e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1182,
    "line": 1176,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b38129b8f34ef0c8c48784f77973009d38e8728f390efb38e2e79314bd5fbfdf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37f42840f1f83784110328b06aa3c3c8471dd01061172b3c37b2410f747b4306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1176–1182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Regular.domSMul {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A]
    [MeasurableSpace A] [TopologicalSpace A] [BorelSpace A] [ContinuousConstSMul G A]
    {μ : Measure A} (g : Gᵈᵐᵃ) [Regular μ] : Regular (g • μ) :=
  .map <| .smul ((DomMulAct.mk.symm g : G)⁻¹)

-- see Note [lower instance priority]
/-- Any locally finite measure on a `σ`-compact pseudometrizable space is regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean#L1176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f215bc1599fd5074d27350093866a6fb97eb647e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
