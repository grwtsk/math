# Polynomial.disj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9471fe144e2726af297e1cce8e55b3b5297f83a18a7ba70bd0e31ffb423c25d0",
  "kind": "def",
  "lexical_name": "Polynomial.disj",
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
  "slug": "polynomial-disj--630a400cbb05e65512087c20",
  "source": {
    "blob": "7c15caa7414202db60f7f6752d2a3ff04c5ccd00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 105,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:630a400cbb05e65512087c20a5e29c31ca286f5f7df50f062d08249c83dc06c0",
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

Occurrence: `declaration:9471fe144e2726af297e1cce8e55b3b5297f83a18a7ba70bd0e31ffb423c25d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Polynomial.disj (p q : Polynomial α) : Polynomial α :=
  Polynomial.add (Polynomial.add p q) (Polynomial.mul p q)

/-- Boolean implication of ANF polynomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c15caa7414202db60f7f6752d2a3ff04c5ccd00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
