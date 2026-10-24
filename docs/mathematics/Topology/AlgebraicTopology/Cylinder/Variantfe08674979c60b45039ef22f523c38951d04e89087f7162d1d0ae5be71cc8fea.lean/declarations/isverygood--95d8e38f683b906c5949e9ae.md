# IsVeryGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c63e214385c5b4f97e009abb4ba50abf3b46793aa84d9cd31eb73237b760a5e0",
  "kind": "class",
  "lexical_name": "IsVeryGood",
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
  "slug": "isverygood--95d8e38f683b906c5949e9ae",
  "source": {
    "blob": "27161f3430e606dd6cfed91a48431d1e25532e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 183,
    "path": "GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95d8e38f683b906c5949e9aedcac3caa5cefc72025e8462cd782fd0e08222758",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c63e214385c5b4f97e009abb4ba50abf3b46793aa84d9cd31eb73237b760a5e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsVeryGood [HasBinaryCoproduct A A] [CategoryWithCofibrations C]
    [CategoryWithFibrations C] : Prop extends P.IsGood where
  fibration_π : Fibration P.π := by infer_instance

attribute [instance] IsGood.cofibration_i IsVeryGood.fibration_π

section

variable [HasBinaryCoproduct A A] [CategoryWithCofibrations C]
  [HasInitial C] [(cofibrations C).IsStableUnderComposition]
  [(cofibrations C).IsStableUnderCobaseChange]
  [IsCofibrant A] [P.IsGood]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Cylinder/Variantfe08674979c60b45039ef22f523c38951d04e89087f7162d1d0ae5be71cc8fea.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27161f3430e606dd6cfed91a48431d1e25532e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
