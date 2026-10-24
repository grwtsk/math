# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:335676feec1ea49543c5fd1cc87f87baf196e4a28848784952db4a2e6808a3ef",
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
  "slug": "instance--4eba5791ce7207ae1cf8ebaa",
  "source": {
    "blob": "cfe73d57984911ce794760aecb2e622f76ece785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4eba5791ce7207ae1cf8ebaac2fe35d73e328834e08b401313651018e479d87f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:335676feec1ea49543c5fd1cc87f87baf196e4a28848784952db4a2e6808a3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsMulTorsionFree α where pow_left_injective _ hn := (pow_left_strictMono hn).injective

variable (α) in
/-- A nontrivial densely linear ordered commutative group can't be a cyclic group. -/
@[to_additive
  "A nontrivial densely linear ordered additive commutative group can't be a cyclic group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantddccc84d36e48ee9b6ca920576b7bfc43eb0928b6d0ac6e8a6e44c753d8df615.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe73d57984911ce794760aecb2e622f76ece785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
