# commGrpTypeEquivalenceCommGrpForgetGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58a88d22ecbaac420aa9970472c90a5482057b414bff91259e013a7731d5bfe1",
  "kind": "def",
  "lexical_name": "commGrpTypeEquivalenceCommGrpForgetGrp",
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
  "slug": "commgrptypeequivalencecommgrpforgetgrp--b624a75d1c68b1287b0064d4",
  "source": {
    "blob": "ff31a53f05a0c0803e4b7dd532219c6b1b773d75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b624a75d1c68b1287b0064d47834fdfb12969ac2a69861d432eefe2b7f31b182",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58a88d22ecbaac420aa9970472c90a5482057b414bff91259e013a7731d5bfe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commGrpTypeEquivalenceCommGrpForgetGrp :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrp Grp ≅
      CommGrp_.forget₂Grp_ (Type u) ⋙ GrpTypeEquivalenceGrp.functor :=
  Iso.refl _

/-- The equivalences `CommMon_ (Type u) ≌ CommMonCat.{u}` and `CommGrp_ (Type u) ≌ CommGrp.{u}`
are naturally compatible with the forgetful functors to `Grp` and `Grp_ (Type u)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff31a53f05a0c0803e4b7dd532219c6b1b773d75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
