# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e73560f12e705fc31d383ae11ac0556ffae44d3ee5fdd24494aba8b222db0551",
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
  "slug": "instance--0ac935db0bbe5ba5e33a9d5f",
  "source": {
    "blob": "5efcb6287cb7009e8d50f4ee2bfd1ce76f65d65f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ac935db0bbe5ba5e33a9d5fcfe39d5fb1b93bf6dc20a92e4839c2b7ae5a0e9f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e73560f12e705fc31d383ae11ac0556ffae44d3ee5fdd24494aba8b222db0551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R : Type*) [MulOneClass R] : FaithfulSMul R R where
  eq_of_smul_eq_smul {r₁ r₂} h := by simpa using h 1

/-- `Mul.toSMulMulOpposite` is faithful when there is a (left) identity. -/
@[to_additive /-- `Add.toVAddAddOpposite` is faithful when there is a (left) identity. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5efcb6287cb7009e8d50f4ee2bfd1ce76f65d65f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
