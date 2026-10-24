# instSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53f332fc4cd0e4cfe4c8d8f083bc0493eca4b89c716f65e087071416c1f00982",
  "kind": "instance",
  "lexical_name": "instSemiring",
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
  "slug": "instsemiring--147d7a45adde1b99c38fb0f6",
  "source": {
    "blob": "42479a7ca982e93ff74a45317b33e66766138651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 240,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:147d7a45adde1b99c38fb0f6b55407ebd2bf321891dfec63223fedec888a0c67",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53f332fc4cd0e4cfe4c8d8f083bc0493eca4b89c716f65e087071416c1f00982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemiring [Preorder α] [LocallyFiniteOrder α] [DecidableEq α] [Semiring 𝕜] :
    Semiring (IncidenceAlgebra 𝕜 α) where
  __ := instNonAssocSemiring
  mul_assoc f g h := by
    ext a b
    simp only [mul_apply, sum_mul, mul_sum, sum_sigma']
    apply sum_nbij' (fun ⟨a, b⟩ ↦ ⟨b, a⟩) (fun ⟨a, b⟩ ↦ ⟨b, a⟩) <;>
      aesop (add simp mul_assoc) (add unsafe le_trans)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42479a7ca982e93ff74a45317b33e66766138651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
