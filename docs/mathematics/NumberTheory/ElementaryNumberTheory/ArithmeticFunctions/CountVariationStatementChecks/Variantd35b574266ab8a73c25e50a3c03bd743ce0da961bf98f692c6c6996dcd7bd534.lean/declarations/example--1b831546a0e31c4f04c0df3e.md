# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791ecf2539f93b65e190838ab4c63a2e33f45dabcb38925014ab53700aadc945",
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
  "slug": "example--1b831546a0e31c4f04c0df3e",
  "source": {
    "blob": "82091ab525a203e59aa7c483e19657f2733f071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 197,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b831546a0e31c4f04c0df3e1f96476bc3a4f45c04ce6e8a029083a6354c54cb",
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

Occurrence: `declaration:791ecf2539f93b65e190838ab4c63a2e33f45dabcb38925014ab53700aadc945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a e : ℕ → ℝ) (δ C : ℝ) (G : ℕ)
    (hbound : ∀ j ∈ Icc 1 G,
      |(∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)| ≤ C * Real.sqrt (j : ℝ)) :
    |(∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g)| ≤
      C * (Real.sqrt (G : ℝ) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_abs_le_sqrt_variation a e δ C G hbound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CountVariationStatementChecks/Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82091ab525a203e59aa7c483e19657f2733f071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
