# toANF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d424f5f41b85988e46ee0adb439abbd7ee482868aba4694b99c6da006f92dfa",
  "kind": "def",
  "lexical_name": "toANF",
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
  "slug": "toanf--4744aabbacc9d2428fdcf84b",
  "source": {
    "blob": "7c15caa7414202db60f7f6752d2a3ff04c5ccd00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 269,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4744aabbacc9d2428fdcf84b758e911e6689e029ed9e4e956d3dd640f0070383",
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

Occurrence: `declaration:4d424f5f41b85988e46ee0adb439abbd7ee482868aba4694b99c6da006f92dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toANF : Tree α → ANF.Polynomial α
  | .var a => ANF.Polynomial.var a
  | .falsum => ANF.Polynomial.zero
  | .truth => ANF.Polynomial.one
  | .neg p => ANF.Polynomial.compl (toANF p)
  | .conj p q => ANF.Polynomial.mul (toANF p) (toANF q)
  | .disj p q => ANF.Polynomial.disj (toANF p) (toANF q)
  | .impl p q => ANF.Polynomial.impl (toANF p) (toANF q)
  | .eqv p q => ANF.Polynomial.eqv (toANF p) (toANF q)
  | .nand p q => ANF.Polynomial.nand (toANF p) (toANF q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c15caa7414202db60f7f6752d2a3ff04c5ccd00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
