# instBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18515220f4270c771a2f13f4b9eb1e864be6ecffaf3d9cad20c106624e972777",
  "kind": "instance",
  "lexical_name": "instBracket",
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
  "slug": "instbracket--d4325a4b432b44649f638a1a",
  "source": {
    "blob": "3ad5da206c38c69ad087a043509168c091a9dd99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 299,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4325a4b432b44649f638a1ac813339aeed9be5282def6231eb975f3266adf2f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18515220f4270c771a2f13f4b9eb1e864be6ecffaf3d9cad20c106624e972777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instBracket : Bracket (LieDerivation R L L) (LieDerivation R L L) where
  bracket D1 D2 := LieDerivation.mk ⁅(D1 : Module.End R L), (D2 : Module.End R L)⁆ (fun a b => by
    simp only [Ring.lie_def, apply_lie_eq_add, coeFn_coe,
      LinearMap.sub_apply, Module.End.mul_apply, map_add, sub_lie, lie_sub, ← lie_skew b]
    abel)

variable {D1 D2 : LieDerivation R L L}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad5da206c38c69ad087a043509168c091a9dd99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
