# lift_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00ac0b23-19b5-11ea-6053-6df25cf64c07",
  "kind": "theorem",
  "lexical_name": "lift_of",
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
  "slug": "lift-of--871ed55adacacf7a2fbae0bf",
  "source": {
    "blob": "f45ccde0db75c3649c9d6bec5f5150b6137530b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 114,
    "path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:871ed55adacacf7a2fbae0bf5144d7919fd11ddc2e9a07b668d08a8b79778979",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00ac0b23-19b5-11ea-6053-6df25cf64c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_of (f : Generators G → H) (a : Generators G) : lift f (of a) = f a :=
  congr_fun (lift.symm_apply_apply f) a
#align is_free_group.lift_of IsFreeGroup.lift_of

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant24b19bd0a3db964457cfb3a36618b6b6fcc9ea8f8efe050c9fdd68aa3b8c6d4b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45ccde0db75c3649c9d6bec5f5150b6137530b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
