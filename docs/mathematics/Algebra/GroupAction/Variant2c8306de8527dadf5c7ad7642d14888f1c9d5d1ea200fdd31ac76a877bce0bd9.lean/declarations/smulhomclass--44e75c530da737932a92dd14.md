# SMulHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7845c41f170e933ba63723d337e72102caf26e5da87818a3db206c0cf073666",
  "kind": "class",
  "lexical_name": "SMulHomClass",
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
  "slug": "smulhomclass--44e75c530da737932a92dd14",
  "source": {
    "blob": "753e16c7185bf7e11cf3fb4f439e289cee3e6653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44e75c530da737932a92dd14d165667695c7825f600cdc62fd43603caa846243",
  "verification": {
    "reference": "docs/verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7845c41f170e933ba63723d337e72102caf26e5da87818a3db206c0cf073666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SMulHomClass (F : Type*) (M X Y : outParam <| Type*) [SMul M X] [SMul M Y] extends
  FunLike F X fun _ => Y where
  /-- The proposition that the function preserves the action. -/
  map_smul : ∀ (f : F) (c : M) (x : X), f (c • x) = c • f x
#align smul_hom_class SMulHomClass

/- porting note: Removed a @[nolint dangerousInstance] for SMulHomClass
 not dangerous due to outParam -/

export SMulHomClass (map_smul)

attribute [simp] map_smul

-- porting note: removed has_coe_to_fun instance, coercions handled differently now
#noalign mul_action_hom.has_coe_to_fun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `753e16c7185bf7e11cf3fb4f439e289cee3e6653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
