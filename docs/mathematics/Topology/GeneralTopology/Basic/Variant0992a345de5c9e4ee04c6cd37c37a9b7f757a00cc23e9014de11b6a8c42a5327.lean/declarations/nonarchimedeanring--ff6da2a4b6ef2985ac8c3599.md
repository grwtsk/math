# NonarchimedeanRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92f275531063c44c7c965731f635faa4c35b1b044be519b6944eae14c3470eed",
  "kind": "class",
  "lexical_name": "NonarchimedeanRing",
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
  "slug": "nonarchimedeanring--ff6da2a4b6ef2985ac8c3599",
  "source": {
    "blob": "4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff6da2a4b6ef2985ac8c359902aedf10af4fbf4dbcd053730da88b60dd5ce96a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92f275531063c44c7c965731f635faa4c35b1b044be519b6944eae14c3470eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonarchimedeanRing (R : Type*) [Ring R] [TopologicalSpace R] extends TopologicalRing R :
  Prop where
  is_nonarchimedean : ∀ U ∈ nhds (0 : R), ∃ V : OpenAddSubgroup R, (V : Set R) ⊆ U
#align nonarchimedean_ring NonarchimedeanRing

-- see Note [lower instance priority]
/-- Every nonarchimedean ring is naturally a nonarchimedean additive group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
