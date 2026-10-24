# ker_eq_bot_of_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49829ce7-1c72-6a7b-1ac5-b8f57f52b495",
  "kind": "theorem",
  "lexical_name": "ker_eq_bot_of_cancel",
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
  "slug": "ker-eq-bot-of-cancel--a498e1238c56b025721e2c0d",
  "source": {
    "blob": "b1f43031a2d0784942c694504af1a832e0c61be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 379,
    "path": "GRWTSK/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a498e1238c56b025721e2c0dbc3a4f66dfbbd272812aab0ea73c19a42a9a1fd6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49829ce7-1c72-6a7b-1ac5-b8f57f52b495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_eq_bot_of_cancel {f : M →ₛₗ[τ₁₂] M₂}
    (h : ∀ u v : ker f →ₗ[R] M, f.comp u = f.comp v → u = v) : ker f = ⊥ := by
  have h₁ : f.comp (0 : ker f →ₗ[R] M) = 0 := comp_zero _
  rw [← Submodule.range_subtype (ker f),
    ← h 0 (ker f).subtype (Eq.trans h₁ (comp_ker_subtype f).symm)]
  exact range_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Range/Variant620df07f9aa7783a9e98fa3aa5378cca5866f0661dd074963fa33daceeb55456.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f43031a2d0784942c694504af1a832e0c61be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
