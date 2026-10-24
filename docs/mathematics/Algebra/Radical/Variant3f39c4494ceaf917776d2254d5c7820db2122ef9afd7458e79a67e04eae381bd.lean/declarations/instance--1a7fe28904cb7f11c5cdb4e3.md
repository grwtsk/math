# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c539298da79541dbeb457088bbfff962d063a59319928f813f4c442482cc1fb4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1a7fe28904cb7f11c5cdb4e3",
  "source": {
    "blob": "dd8886c6dcde6371f153731526df6c5c2ba234b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 137,
    "path": "GRWTSK/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a7fe28904cb7f11c5cdb4e32860575020478d680493475e2531d8068fa2ece2",
  "verification": {
    "reference": "docs/verification/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c539298da79541dbeb457088bbfff962d063a59319928f813f4c442482cc1fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (jacobson R).IsTwoSided :=
  ⟨fun b ha ↦ Module.le_comap_jacobson (f := LinearMap.toSpanSingleton R R b) ha⟩

variable {R R₂}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Radical/Variant3f39c4494ceaf917776d2254d5c7820db2122ef9afd7458e79a67e04eae381bd.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8886c6dcde6371f153731526df6c5c2ba234b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
