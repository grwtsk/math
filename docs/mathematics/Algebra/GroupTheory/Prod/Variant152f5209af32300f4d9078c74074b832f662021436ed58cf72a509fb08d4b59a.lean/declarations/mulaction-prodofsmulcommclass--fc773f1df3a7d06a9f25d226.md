# MulAction.prodOfSMulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1729f11fd79ba47589b8a16a217bfd2ba6192fa54792f48c37d48d5426d67a0f",
  "kind": "abbrev",
  "lexical_name": "MulAction.prodOfSMulCommClass",
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
  "slug": "mulaction-prodofsmulcommclass--fc773f1df3a7d06a9f25d226",
  "source": {
    "blob": "9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc773f1df3a7d06a9f25d226d833fbd4e0cd5c4f9379610c26ce655b0ea70fab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1729f11fd79ba47589b8a16a217bfd2ba6192fa54792f48c37d48d5426d67a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MulAction.prodOfSMulCommClass [MulAction M α] [MulAction N α] [SMulCommClass M N α] :
    MulAction (M × N) α where
  smul mn a := mn.1 • mn.2 • a
  one_smul a := (one_smul M _).trans (one_smul N a)
  mul_smul x y a := by
    change (x.1 * y.1) • (x.2 * y.2) • a = x.1 • x.2 • y.1 • y.2 • a
    rw [mul_smul, mul_smul, smul_comm y.1 x.2]

/-- A `MulAction` by a product monoid is equivalent to commuting `MulAction`s by the factors. -/
@[to_additive AddAction.prodEquiv
/-- An `AddAction` by a product monoid is equivalent to commuting `AddAction`s by the factors. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Variant152f5209af32300f4d9078c74074b832f662021436ed58cf72a509fb08d4b59a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9dcb721f1ee9b5b6668b61b1d7a83fe2a2c2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
