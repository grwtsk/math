# FiniteField.trace_pow_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af8c5d67-78bc-4e8a-9ee1-9a4c62accc32",
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
  "slug": "finitefield-trace-pow-card--481eed8350c13c85847912ab",
  "source": {
    "blob": "7ce3170e226c2c776e04772e185222c2f8bdd5bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:481eed8350c13c85847912ab1e3ef8d66c3a34b3d2b7f76ca0b10b407cb4f3ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af8c5d67-78bc-4e8a-9ee1-9a4c62accc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteField.trace_pow_card {K : Type*} [Field K] [Fintype K] (M : Matrix n n K) :
    trace (M ^ Fintype.card K) = trace M ^ Fintype.card K := by
  cases isEmpty_or_nonempty n
  · simp [Matrix.trace]
  rw [Matrix.trace_eq_neg_charpoly_coeff, Matrix.trace_eq_neg_charpoly_coeff,
    FiniteField.Matrix.charpoly_pow_card, FiniteField.pow_card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteField/Variant05b3ec9abfe3b1bb7a864d1f428094cd278206443f2608b6f522bce9dfe1b90b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce3170e226c2c776e04772e185222c2f8bdd5bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
