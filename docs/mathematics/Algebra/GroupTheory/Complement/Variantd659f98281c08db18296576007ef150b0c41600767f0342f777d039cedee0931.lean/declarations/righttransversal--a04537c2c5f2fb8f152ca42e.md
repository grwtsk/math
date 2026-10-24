# RightTransversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4d1c9863826812e6dc027e32e3ea1f90f531164033931ef1e156aed0521a38c",
  "kind": "abbrev",
  "lexical_name": "RightTransversal",
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
  "slug": "righttransversal--a04537c2c5f2fb8f152ca42e",
  "source": {
    "blob": "34c95eab8f317f84942becdbf02f661b92d1ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 572,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a04537c2c5f2fb8f152ca42e9e522585c943eed3baba338ad67af780699dc128",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4d1c9863826812e6dc027e32e3ea1f90f531164033931ef1e156aed0521a38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev RightTransversal (H : Subgroup G) := {T : Set G // IsComplement H T}

variable {F : Type*} [Group F] [MulAction F G] [QuotientAction F H]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34c95eab8f317f84942becdbf02f661b92d1ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
