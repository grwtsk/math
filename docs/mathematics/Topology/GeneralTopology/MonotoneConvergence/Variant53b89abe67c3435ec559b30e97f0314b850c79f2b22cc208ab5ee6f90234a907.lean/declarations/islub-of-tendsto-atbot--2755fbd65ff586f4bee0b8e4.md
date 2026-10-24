# isLUB_of_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:541979cd-da59-5be3-c733-d2541d9de777",
  "kind": "theorem",
  "lexical_name": "isLUB_of_tendsto_atBot",
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
  "slug": "islub-of-tendsto-atbot--2755fbd65ff586f4bee0b8e4",
  "source": {
    "blob": "5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2755fbd65ff586f4bee0b8e4dfc58022c92a72c7f1b6d0d38c78672eae096306",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:541979cd-da59-5be3-c733-d2541d9de777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLUB_of_tendsto_atBot [TopologicalSpace α] [Preorder α] [OrderClosedTopology α]
    [Preorder β] [IsCodirectedOrder β] [Nonempty β] {f : β → α} {a : α} (hf : Antitone f)
    (ha : Tendsto f atBot (𝓝 a)) : IsLUB (Set.range f) a :=
  isLUB_of_tendsto_atTop (α := α) (β := βᵒᵈ) hf.dual_left ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
