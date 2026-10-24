# Homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9f46b1ba849a61c9689c560735973f756afb00c5a917f36d911fdc42e8d916d",
  "kind": "structure",
  "lexical_name": "Homeomorph",
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
  "slug": "homeomorph--0cac84316fea26fa40859bd8",
  "source": {
    "blob": "224c640df2eada4d7e2dda00a45ca5598780d17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cac84316fea26fa40859bd8eae4a1da76cc72e8bdcb16f038c06f83f770bf4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9f46b1ba849a61c9689c560735973f756afb00c5a917f36d911fdc42e8d916d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Homeomorph (X : Type*) (Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
    extends X ≃ Y where
  /-- The forward map of a homeomorphism is a continuous function. -/
  continuous_toFun : Continuous toFun := by continuity
  /-- The inverse map of a homeomorphism is a continuous function. -/
  continuous_invFun : Continuous invFun := by continuity

@[inherit_doc]
infixl:25 " ≃ₜ " => Homeomorph

namespace Homeomorph

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace W] [TopologicalSpace Z]
  {X' Y' : Type*} [TopologicalSpace X'] [TopologicalSpace Y']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c640df2eada4d7e2dda00a45ca5598780d17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
