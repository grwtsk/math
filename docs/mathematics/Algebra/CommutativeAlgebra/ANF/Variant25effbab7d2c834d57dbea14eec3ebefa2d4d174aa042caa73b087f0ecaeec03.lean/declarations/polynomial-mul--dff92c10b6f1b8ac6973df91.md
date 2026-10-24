# Polynomial.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:478971dfffafc91d7246d7b2568290969a968a675c016f0ac1ab6f024b5abc41",
  "kind": "def",
  "lexical_name": "Polynomial.mul",
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
  "slug": "polynomial-mul--dff92c10b6f1b8ac6973df91",
  "source": {
    "blob": "7c15caa7414202db60f7f6752d2a3ff04c5ccd00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dff92c10b6f1b8ac6973df9145dc7dcf9b56181a1e3cb4dce83829cb187c9fe7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:478971dfffafc91d7246d7b2568290969a968a675c016f0ac1ab6f024b5abc41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Polynomial.mul (p q : Polynomial α) : Polynomial α where
  terms := multiplyTerms p.terms q.terms

/-- Boolean complement of an ANF polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c15caa7414202db60f7f6752d2a3ff04c5ccd00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
