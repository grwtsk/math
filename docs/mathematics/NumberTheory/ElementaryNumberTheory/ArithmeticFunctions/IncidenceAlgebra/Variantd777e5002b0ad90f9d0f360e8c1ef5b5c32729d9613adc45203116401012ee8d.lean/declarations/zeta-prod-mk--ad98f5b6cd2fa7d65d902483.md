# zeta_prod_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095a8c82-9504-8c06-e0b3-7178afa9c8fc",
  "kind": "lemma",
  "lexical_name": "zeta_prod_mk",
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
  "slug": "zeta-prod-mk--ad98f5b6cd2fa7d65d902483",
  "source": {
    "blob": "42479a7ca982e93ff74a45317b33e66766138651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 603,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad98f5b6cd2fa7d65d9024834693e11bcf47c455b1d0866d5cecd62a3fa62900",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095a8c82-9504-8c06-e0b3-7178afa9c8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeta_prod_mk (a₁ a₂ : α) (b₁ b₂ : β) :
    zeta 𝕜 (a₁, b₁) (a₂, b₂) = zeta 𝕜 a₁ a₂ * zeta 𝕜 b₁ b₂ := zeta_prod_apply _ _ _

end DecidableLe

variable {𝕜} (f f₁ f₂ : IncidenceAlgebra 𝕜 α) (g g₁ g₂ : IncidenceAlgebra 𝕜 β)

/-- The Cartesian product of two incidence algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42479a7ca982e93ff74a45317b33e66766138651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
