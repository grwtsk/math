# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4423bfe372169e0f84c03317a1056a56544c715f7788b0a97d8cd714c0380e7c",
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
  "slug": "instance--7b01ecfc0bd58141fbe267f8",
  "source": {
    "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 577,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b01ecfc0bd58141fbe267f87a819bde96f3451890b71ffb94e4f3de01ecaaeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4423bfe372169e0f84c03317a1056a56544c715f7788b0a97d8cd714c0380e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (ι : Type*) [Inhabited ι] : Inhabited (VectorBundleCore R B F ι) :=
  ⟨trivialVectorBundleCore R B F ι⟩

namespace VectorBundleCore

variable {R B F} {ι : Type*}
variable (Z : VectorBundleCore R B F ι)

/-- Natural identification to a `FiberBundleCore`. -/
@[simps (config := mfld_cfg)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dccfa7168a9adea851592463256a7e13d96a346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
