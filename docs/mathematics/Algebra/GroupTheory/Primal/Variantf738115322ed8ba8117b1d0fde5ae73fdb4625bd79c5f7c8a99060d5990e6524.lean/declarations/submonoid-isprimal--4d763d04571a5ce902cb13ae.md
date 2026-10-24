# Submonoid.isPrimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b31990914850cf6247e5ee49cba16134e62392dba68f8d82f224ea635b334378",
  "kind": "def",
  "lexical_name": "Submonoid.isPrimal",
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
  "slug": "submonoid-isprimal--4d763d04571a5ce902cb13ae",
  "source": {
    "blob": "8d16a87c4eb35dd5f91e0127501d53f2d2bbb12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/Algebra/GroupTheory/Primal/Variantf738115322ed8ba8117b1d0fde5ae73fdb4625bd79c5f7c8a99060d5990e6524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d763d04571a5ce902cb13ae1c23213cb72e57c74621ff34c3b2b86e3a64470c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Primal/Variantf738115322ed8ba8117b1d0fde5ae73fdb4625bd79c5f7c8a99060d5990e6524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b31990914850cf6247e5ee49cba16134e62392dba68f8d82f224ea635b334378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Submonoid.isPrimal (M₀ : Type*) [CancelCommMonoidWithZero M₀] : Submonoid M₀ where
  carrier := {a | IsPrimal a}
  mul_mem' := .mul
  one_mem' := isUnit_one.isPrimal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Primal/Variantf738115322ed8ba8117b1d0fde5ae73fdb4625bd79c5f7c8a99060d5990e6524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Primal/Variantf738115322ed8ba8117b1d0fde5ae73fdb4625bd79c5f7c8a99060d5990e6524.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d16a87c4eb35dd5f91e0127501d53f2d2bbb12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
