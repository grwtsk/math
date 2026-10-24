# continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:060ee610744cc466a3b19262a59d5bd1b37331b0c3188873c7036c4f94b23492",
  "kind": "instance",
  "lexical_name": "continuousSMul",
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
  "slug": "continuoussmul--56d2452690137f881ecff232",
  "source": {
    "blob": "d5a7b0730e93bc941e79cfa8beeea0777006a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56d2452690137f881ecff23258fce055080cc0407dbf6982ba2775690808b7bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:060ee610744cc466a3b19262a59d5bd1b37331b0c3188873c7036c4f94b23492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance continuousSMul [TopologicalSpace α] [Semiring α] [AddCommMonoid β] [Module α β]
    [ContinuousSMul α β] (S : Submodule α β) : ContinuousSMul α S :=
  continuousSMul_induced S.subtype
#align submodule.has_continuous_smul Submodule.continuousSMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc9b0e1eb51ad0d0d4e708dad47147aaecc3fb8ad574bde4c7742acea025eef88.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a7b0730e93bc941e79cfa8beeea0777006a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
