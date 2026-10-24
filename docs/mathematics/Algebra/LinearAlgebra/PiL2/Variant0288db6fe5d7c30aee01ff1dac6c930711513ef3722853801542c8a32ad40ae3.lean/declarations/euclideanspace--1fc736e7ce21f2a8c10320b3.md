# EuclideanSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9e54b42f1b49bbe12b2e7f2cb95952671aea782187a104b623887e2d6e09e21",
  "kind": "abbrev",
  "lexical_name": "EuclideanSpace",
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
  "slug": "euclideanspace--1fc736e7ce21f2a8c10320b3",
  "source": {
    "blob": "8d16990795097748798c1bb780b51ddf36c2a405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fc736e7ce21f2a8c10320b3923b6753462f5a46f1c5397054ed10f4911cfdc6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9e54b42f1b49bbe12b2e7f2cb95952671aea782187a104b623887e2d6e09e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev EuclideanSpace (𝕜 : Type*) (n : Type*) : Type _ :=
  PiLp 2 fun _ : n => 𝕜

section Notation
open Lean Meta Elab Term Macro TSyntax PrettyPrinter.Delaborator SubExpr
open Mathlib.Tactic (subscriptTerm)

/-- Notation for vectors in Lp space. `!₂[x, y, ...]` is a shorthand for
`(WithLp.equiv 2 _ _).symm ![x, y, ...]`, of type `EuclideanSpace _ (Fin _)`.

This also works for other subscripts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variant0288db6fe5d7c30aee01ff1dac6c930711513ef3722853801542c8a32ad40ae3.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d16990795097748798c1bb780b51ddf36c2a405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
