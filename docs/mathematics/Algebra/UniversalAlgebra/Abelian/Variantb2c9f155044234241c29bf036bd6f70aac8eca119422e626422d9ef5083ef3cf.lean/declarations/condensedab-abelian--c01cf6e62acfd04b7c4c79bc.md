# CondensedAb.abelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dae28d1083fa77ed86cb998beec2553ae0f7fa93d3e0632e960f9c01c77b538",
  "kind": "instance",
  "lexical_name": "CondensedAb.abelian",
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
  "slug": "condensedab-abelian--c01cf6e62acfd04b7c4c79bc",
  "source": {
    "blob": "89bf6054a50ccded44dc607a80100f92869a5202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c01cf6e62acfd04b7c4c79bccdbc22b20198130a7ed74ef7b60a739cb694a66f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dae28d1083fa77ed86cb998beec2553ae0f7fa93d3e0632e960f9c01c77b538`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance CondensedAb.abelian :
    CategoryTheory.Abelian CondensedAb.{u} :=
  letI : PreservesLimits (forget AddCommGroupCat.{u+1}) :=
    AddCommGroupCat.forgetPreservesLimits.{u+1, u+1}
  CategoryTheory.sheafIsAbelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bf6054a50ccded44dc607a80100f92869a5202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
