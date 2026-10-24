# IsSplittingField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5a82c77c316f873a8bb84f971cdb73c9787851b88f4c950375bd60f5985404e",
  "kind": "class",
  "lexical_name": "IsSplittingField",
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
  "slug": "issplittingfield--1cdc2e80265897a73d02d6b6",
  "source": {
    "blob": "05bb5454a9cbe94284457671f0754000cb7ca6bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cdc2e80265897a73d02d6b607ee365bcac6881f423a06fbd1afb2665e64d408",
  "verification": {
    "reference": "docs/verification/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5a82c77c316f873a8bb84f971cdb73c9787851b88f4c950375bd60f5985404e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsSplittingField (f : K[X]) : Prop where
  splits' : Splits (algebraMap K L) f
  adjoin_rootSet' : Algebra.adjoin K (f.rootSet L : Set L) = ⊤
#align polynomial.is_splitting_field Polynomial.IsSplittingField

namespace IsSplittingField

variable {K}

-- Porting note: infer kinds are unsupported
-- so we provide a version of `splits'` with `f` explicit.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05bb5454a9cbe94284457671f0754000cb7ca6bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
