# separatesPointsOfOpensMeasurableSpaceOfT0Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c4b82f19cc6ab6f4efca4b88ecb8cb43acd1169914dd707f0b34e38df48974c",
  "kind": "instance",
  "lexical_name": "separatesPointsOfOpensMeasurableSpaceOfT0Space",
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
  "slug": "separatespointsofopensmeasurablespaceoft0space--1567ee87122e18071fd9b5cb",
  "source": {
    "blob": "2b8a9a5f3732a4b4c1822eebb4543c9e50021073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 455,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1567ee87122e18071fd9b5cb494262b640252871de1e395504ea24872de726cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c4b82f19cc6ab6f4efca4b88ecb8cb43acd1169914dd707f0b34e38df48974c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance separatesPointsOfOpensMeasurableSpaceOfT0Space [T0Space α] :
    MeasurableSpace.SeparatesPoints α where
  separates x y := by
    contrapose!
    intro x_ne_y
    obtain ⟨U, U_open, mem_U⟩ := exists_isOpen_xor'_mem x_ne_y
    by_cases x_in_U : x ∈ U
    · refine ⟨U, U_open.measurableSet, x_in_U, ?_⟩
      simp_all only [ne_eq, xor_true, not_false_eq_true]
    · refine ⟨Uᶜ, U_open.isClosed_compl.measurableSet, x_in_U, ?_⟩
      simp_all only [ne_eq, xor_false, id_eq, mem_compl_iff, not_true_eq_false, not_false_eq_true]

/-- A continuous function from an `OpensMeasurableSpace` to a `BorelSpace`
is measurable. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8a9a5f3732a4b4c1822eebb4543c9e50021073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
