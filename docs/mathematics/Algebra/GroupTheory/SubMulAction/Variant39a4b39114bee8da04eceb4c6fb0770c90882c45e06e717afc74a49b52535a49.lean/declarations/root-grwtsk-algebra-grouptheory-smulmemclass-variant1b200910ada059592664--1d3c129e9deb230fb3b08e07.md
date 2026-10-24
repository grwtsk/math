# _root_.GRWTSK.Algebra.GroupTheory.SMulMemClass.Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.SMulMemClass.ofIsScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:767c6c6b-5952-7e2b-8bb2-81e7ece4047e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.SMulMemClass.Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.SMulMemClass.ofIsScalarTower",
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
  "slug": "root-grwtsk-algebra-grouptheory-smulmemclass-variant1b200910ada059592664--1d3c129e9deb230fb3b08e07",
  "source": {
    "blob": "cdf6003d25e1247a33af849d37e5db6aa4320c69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 100,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant39a4b39114bee8da04eceb4c6fb0770c90882c45e06e717afc74a49b52535a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d3c129e9deb230fb3b08e07172255f81eb719eb7fda9a254cbb344a3a0ea4ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant39a4b39114bee8da04eceb4c6fb0770c90882c45e06e717afc74a49b52535a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767c6c6b-5952-7e2b-8bb2-81e7ece4047e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem _root_.GRWTSK.Algebra.GroupTheory.SMulMemClass.Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.SMulMemClass.ofIsScalarTower (S M N α : Type*) [SetLike S α]
    [SMul M N] [SMul M α] [Monoid N] [MulAction N α] [SMulMemClass S N α] [IsScalarTower M N α] :
    SMulMemClass S M α :=
  { smul_mem := fun m a ha => smul_one_smul N m a ▸ SMulMemClass.smul_mem _ ha }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant39a4b39114bee8da04eceb4c6fb0770c90882c45e06e717afc74a49b52535a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant39a4b39114bee8da04eceb4c6fb0770c90882c45e06e717afc74a49b52535a49.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf6003d25e1247a33af849d37e5db6aa4320c69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
