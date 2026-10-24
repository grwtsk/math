# preorderTopology_le_upper_of_linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37ab7b3b-0e1e-5ad0-6369-f9806819b624",
  "kind": "theorem",
  "lexical_name": "preorderTopology_le_upper_of_linearOrder",
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
  "slug": "preordertopology-le-upper-of-linearorder--530b078d391ce9c285c23278",
  "source": {
    "blob": "c27d2df7280307e9a366db5c4bbba8dbec1e2a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530b078d391ce9c285c232782cd731d6a349573f63d3b06e8e2df1479346c483",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37ab7b3b-0e1e-5ad0-6369-f9806819b624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preorderTopology_le_upper_of_linearOrder : Preorder.topology α ≤ Topology.upper α :=
  TopologicalSpace.generateFrom_anti fun s ⟨a, h⟩ ↦ ⟨a, by simp [← h]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c27d2df7280307e9a366db5c4bbba8dbec1e2a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
