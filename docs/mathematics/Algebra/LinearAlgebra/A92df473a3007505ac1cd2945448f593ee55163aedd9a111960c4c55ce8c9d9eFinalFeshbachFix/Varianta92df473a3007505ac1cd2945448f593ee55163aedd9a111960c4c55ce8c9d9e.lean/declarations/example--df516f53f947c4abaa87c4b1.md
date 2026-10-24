# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b603161352fdc2462651d47306265dde869358f51e61100f518c43e18d0a5887",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--df516f53f947c4abaa87c4b1",
  "source": {
    "blob": "0806956edcb82a78bd998c2a855bc82ad846a309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 337,
    "path": "GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df516f53f947c4abaa87c4b17d40ed48ec38526ae46b26c12ff4e13a92e17890",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b603161352fdc2462651d47306265dde869358f51e61100f518c43e18d0a5887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1 =
      FeshbachEquationIdealFixture.diagonalEquationIdeal 1 1 ∧
    (FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1).IsRadical ∧
    (∀ x y : ℝ, 0 ≤ x ^ 2 + y ^ 2) ∧
    (∃ x y : ℝ, -(x ^ 2) + y ^ 2 < 0) :=
  FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign



-- Exact fixture source: tests/positive_atlas_quadratic_certificate.lean

/-!
Exact rational checker fixtures: a genuine Gram identity, a rejected negative
target, and a constrained target whose global sign remains negative. This checks
that certificate soundness retains its admissibility boundary.
AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures

open Matrix
open scoped Matrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Varianta92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9e.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0806956edcb82a78bd998c2a855bc82ad846a309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
