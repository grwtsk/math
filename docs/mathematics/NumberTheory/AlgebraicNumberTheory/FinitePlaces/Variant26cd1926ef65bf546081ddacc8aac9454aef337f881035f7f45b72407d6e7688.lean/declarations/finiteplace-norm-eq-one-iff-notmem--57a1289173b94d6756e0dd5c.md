# FinitePlace.norm_eq_one_iff_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54c88186-0cd3-86b9-9b8b-3328987a8c54",
  "kind": "theorem",
  "lexical_name": "FinitePlace.norm_eq_one_iff_notMem",
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
  "slug": "finiteplace-norm-eq-one-iff-notmem--57a1289173b94d6756e0dd5c",
  "source": {
    "blob": "4b816975828aea26d5b9815ba628175d029a6e59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57a1289173b94d6756e0dd5c9d7f6de935a41c598ebc75fd0d1dce8d6e9f68ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c88186-0cd3-86b9-9b8b-3328987a8c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinitePlace.norm_eq_one_iff_notMem (x : 𝓞 (WithVal (v.valuation K))) :
    ‖embedding v x‖ = 1 ↔ x ∉ v.asIdeal := by
  rw [norm_def_int, NNReal.coe_eq_one, toNNReal_eq_one_iff (v.intValuation x)
    (absNorm_ne_zero v) (one_lt_absNorm_nnreal v).ne', ← intValuation_lt_one_iff_mem, not_lt]
  exact (intValuation_le_one v x).ge_iff_eq.symm

@[deprecated (since := "2025-05-23")]
alias FinitePlace.norm_eq_one_iff_not_mem := FinitePlace.norm_eq_one_iff_notMem

@[deprecated (since := "2025-02-28")]
  alias norm_eq_one_iff_not_mem := FinitePlace.norm_eq_one_iff_not_mem

/-- The `v`-adic norm of an integer is less than 1 if and only if it is in the ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b816975828aea26d5b9815ba628175d029a6e59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
