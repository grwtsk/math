# FiniteField.trace_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7901cfed-41e0-0758-9810-c03cb9cc6f50",
  "kind": "theorem",
  "lexical_name": "FiniteField.trace_pow_card",
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
  "slug": "finitefield-trace-pow-card--9aa83d24f2d1402ebdba6557",
  "source": {
    "blob": "7eb7cb30ad79fc3afdfc0aac4847e58394a7c588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aa83d24f2d1402ebdba65576c831c0fe4f4be5d1c18cc5f74995d4a7e88610d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7901cfed-41e0-0758-9810-c03cb9cc6f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.trace_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    trace (M ^ Fintype.card K) = trace M ^ Fintype.card K := by
  cases isEmpty_or_nonempty n
  · simp [Matrix.trace]; rw [zero_pow Fintype.card_pos]
  rw [Matrix.trace_eq_neg_charpoly_coeff, Matrix.trace_eq_neg_charpoly_coeff,
    FiniteField.Matrix.charpoly_pow_card, FiniteField.pow_card]
#align finite_field.trace_pow_card FiniteField.trace_pow_card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteField/Varianta26846b0c634cb0491a8ef0078083595f7fb4bd48f987938cdf25771ec1b7d39.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eb7cb30ad79fc3afdfc0aac4847e58394a7c588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
