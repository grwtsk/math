# SMulZeroClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79cf7fe529302865600b9d85d948f80fa9f2354c101e57f3ea89dd4883a79942",
  "kind": "class",
  "lexical_name": "SMulZeroClass",
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
  "slug": "smulzeroclass--ce8818ac1d7262dd607ccc2f",
  "source": {
    "blob": "d1b8b03967b2f390f2f92054254a3db7564f53f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 702,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce8818ac1d7262dd607ccc2f001ffdb295a88da5d7aa405a624a4ddbec023ced",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79cf7fe529302865600b9d85d948f80fa9f2354c101e57f3ea89dd4883a79942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SMulZeroClass (M A : Type*) [Zero A] extends SMul M A where
  /-- Multiplying `0` by a scalar gives `0` -/
  smul_zero : ∀ a : M, a • (0 : A) = 0
#align smul_zero_class SMulZeroClass

section smul_zero

variable [Zero A] [SMulZeroClass M A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant48efdafdb5abf1404cef491160fee73b2b2ae5f31c45d73782ef3bcd014f6ef3.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b8b03967b2f390f2f92054254a3db7564f53f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
