# isTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87de2022c97e7de86b20174a15366f63bad63ddbb760e0f39672e6d7bb2b8d19",
  "kind": "instance",
  "lexical_name": "isTopologicalGroup",
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
  "slug": "istopologicalgroup--200a2a6572a4968ba1038b91",
  "source": {
    "blob": "e7fdd0d23e6dbb53bbf1ac6b92ab804a545b3a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:200a2a6572a4968ba1038b918efd1c32eb11dece8174733016115a9bf4d3c658",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87de2022c97e7de86b20174a15366f63bad63ddbb760e0f39672e6d7bb2b8d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isTopologicalGroup : IsTopologicalGroup (SL n R) where
  continuous_inv := continuous_induced_rng.mpr continuous_induced_dom.matrix_adjugate
  continuous_mul := continuous_induced_rng.mpr <|
    (continuous_induced_dom.comp continuous_fst).mul (continuous_induced_dom.comp continuous_snd)

@[deprecated (since := "2026-08-21")] alias topologicalGroup := isTopologicalGroup

/-!
### Mapping `SL(n, R)` to `GL(n, R)`
-/
section toGL

/-- The natural map from `SL n A` to `GL n A` is continuous. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7fdd0d23e6dbb53bbf1ac6b92ab804a545b3a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
