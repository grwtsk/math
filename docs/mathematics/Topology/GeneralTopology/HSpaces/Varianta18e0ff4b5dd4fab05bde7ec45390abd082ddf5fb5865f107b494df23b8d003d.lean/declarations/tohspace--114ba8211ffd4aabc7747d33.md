# toHSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e416c0620ba6e9802fc93ea0cfc850e847b12c6e9c27e8ff3063543c9c8bf6ee",
  "kind": "def",
  "lexical_name": "toHSpace",
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
  "slug": "tohspace--114ba8211ffd4aabc7747d33",
  "source": {
    "blob": "4251c65246fb7902b9cc0fe740affb71d73f1283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:114ba8211ffd4aabc7747d3376308d7884acb1c58e01ef3bc2fda7b93cd77d82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e416c0620ba6e9802fc93ea0cfc850e847b12c6e9c27e8ff3063543c9c8bf6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toHSpace (M : Type u) [MulOneClass M] [TopologicalSpace M] [ContinuousMul M] : HSpace M where
  hmul := ⟨Function.uncurry Mul.mul, continuous_mul⟩
  e := 1
  hmul_e_e := one_mul 1
  eHmul := (HomotopyRel.refl _ _).cast rfl (by ext1; apply one_mul)
  hmulE := (HomotopyRel.refl _ _).cast rfl (by ext1; apply mul_one)
#align topological_group.to_H_space TopologicalGroup.toHSpace
#align topological_add_group.to_H_space TopologicalAddGroup.toHSpace

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Varianta18e0ff4b5dd4fab05bde7ec45390abd082ddf5fb5865f107b494df23b8d003d.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4251c65246fb7902b9cc0fe740affb71d73f1283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
