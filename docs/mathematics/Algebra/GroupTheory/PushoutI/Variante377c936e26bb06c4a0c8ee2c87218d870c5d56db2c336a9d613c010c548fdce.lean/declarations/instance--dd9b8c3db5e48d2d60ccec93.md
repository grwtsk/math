# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4b09571e9fa06e72c176b76d9cf37a51f06440a550ef87fe2c16daeda113418",
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
  "slug": "instance--dd9b8c3db5e48d2d60ccec93",
  "source": {
    "blob": "96a570a1640fb994f6279ddb82dd6fcb57f5bfc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd9b8c3db5e48d2d60ccec937b923333a6f41c9d1efdfd2f845bb93d2ae6c7b2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4b09571e9fa06e72c176b76d9cf37a51f06440a550ef87fe2c16daeda113418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (i : ι) : Inhabited (Pair d i) :=
  ⟨{ (empty : NormalWord d) with
      head := 1, tail := _,
      fstIdx_ne := fun h => by cases h }⟩

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a570a1640fb994f6279ddb82dd6fcb57f5bfc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
