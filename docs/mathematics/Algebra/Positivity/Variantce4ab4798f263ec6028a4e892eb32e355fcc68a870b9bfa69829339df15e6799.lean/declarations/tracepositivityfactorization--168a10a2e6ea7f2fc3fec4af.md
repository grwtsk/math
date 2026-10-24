# TracePositivityFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11874b6158b85d8e1c3b37089a46fc4ebfce072b43d1ca3446fba57e4024a264",
  "kind": "structure",
  "lexical_name": "TracePositivityFactorization",
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
  "slug": "tracepositivityfactorization--168a10a2e6ea7f2fc3fec4af",
  "source": {
    "blob": "b374dbc73ca8588d4d8fe4ade44f719c2b270a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 35,
    "path": "GRWTSK/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:168a10a2e6ea7f2fc3fec4af839fa5c42a5c1f5515c95370feeb40b48da5464a",
  "verification": {
    "reference": "docs/verification/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11874b6158b85d8e1c3b37089a46fc4ebfce072b43d1ca3446fba57e4024a264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracePositivityFactorization
    {xi : ℂ → ℂ}
    (criterion :
      ArithmeticPositivityCriterion xi)
    (Algebra : Type uAlgebra) where
  algebra : PositiveTraceAlgebra Algebra
  factor :
    criterion.Test → Algebra
  exact :
    ∀ test,
      criterion.admissible test →
      criterion.functional test =
        algebra.trace
          (algebra.multiply
            (algebra.star (factor test))
            (factor test))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b374dbc73ca8588d4d8fe4ade44f719c2b270a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
