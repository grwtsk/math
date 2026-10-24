# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:685d9ac6744c494107fe5a4d514d01f0c6f7d7554d852c98cdbdcab0ded97e4a",
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
  "slug": "example--caf001114f47fe462b14fb89",
  "source": {
    "blob": "82091ab525a203e59aa7c483e19657f2733f071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caf001114f47fe462b14fb89ad2f9d99f62a229013e4d5abe97b8d5a92001c91",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:685d9ac6744c494107fe5a4d514d01f0c6f7d7554d852c98cdbdcab0ded97e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h j G : ℕ) (hh : 1 ≤ h) (hj : 1 ≤ j) (hjG : j ≤ G) :
    |(∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g h then 1 else 0)) -
      ((∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        ∑ d ∈ Icc 1 (Nat.sqrt G), if Nat.Coprime d h then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0) * (j : ℝ)| ≤
      ((h.divisors.card : ℝ) + 2) * Real.sqrt (j : ℝ) :=
  SquarefreeCount.fixedDensity_error_le h j G hh hj hjG
end SquarefreeCountStatements

-- The finite Abel transport keeps its terminal atom and the full positive difference range.
section FiniteAbelVariationStatements
open Finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82091ab525a203e59aa7c483e19657f2733f071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
