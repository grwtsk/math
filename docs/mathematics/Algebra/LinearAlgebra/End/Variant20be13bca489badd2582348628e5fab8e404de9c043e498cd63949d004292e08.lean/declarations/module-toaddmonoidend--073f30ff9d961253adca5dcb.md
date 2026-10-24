# Module.toAddMonoidEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16deb63b16f545ece9149df13ac6d86c7e1c3c81bc4426b5849ce4d32ac4f65c",
  "kind": "def",
  "lexical_name": "Module.toAddMonoidEnd",
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
  "slug": "module-toaddmonoidend--073f30ff9d961253adca5dcb",
  "source": {
    "blob": "6b8c96a03acf3889e9ddb1d9f36f8db48a5a70e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:073f30ff9d961253adca5dcbc1d846338dcd02461bcf364b5199092d3d8ce475",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16deb63b16f545ece9149df13ac6d86c7e1c3c81bc4426b5849ce4d32ac4f65c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Module.toAddMonoidEnd : R →+* AddMonoid.End M :=
  { DistribMulAction.toAddMonoidEnd R M with
    map_zero' := AddMonoidHom.ext fun r => by simp
    map_add' x y :=
      AddMonoidHom.ext fun r => by simp [(AddMonoidHom.add_apply), add_smul] }

/-- A convenience alias for `Module.toAddMonoidEnd` as an `AddMonoidHom`, usually to allow the
use of `AddMonoidHom.flip`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/End/Variant20be13bca489badd2582348628e5fab8e404de9c043e498cd63949d004292e08.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b8c96a03acf3889e9ddb1d9f36f8db48a5a70e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
