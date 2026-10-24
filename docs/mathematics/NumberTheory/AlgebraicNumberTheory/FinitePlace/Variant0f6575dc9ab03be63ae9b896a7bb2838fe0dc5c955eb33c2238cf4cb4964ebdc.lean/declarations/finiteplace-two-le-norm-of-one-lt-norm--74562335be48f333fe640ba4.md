# FinitePlace.two_le_norm_of_one_lt_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33d9ea8e-1bee-129e-d247-ca823b061295",
  "kind": "lemma",
  "lexical_name": "FinitePlace.two_le_norm_of_one_lt_norm",
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
  "slug": "finiteplace-two-le-norm-of-one-lt-norm--74562335be48f333fe640ba4",
  "source": {
    "blob": "68aafb0457993edf375efd376cf30cdcb82c5e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 317,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74562335be48f333fe640ba4aef0110c0e0bdc32771a5ac944a544682abf562d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d9ea8e-1bee-129e-d247-ca823b061295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FinitePlace.two_le_norm_of_one_lt_norm (x : v.adicCompletion K) (h : 1 < ‖x‖) : 2 ≤ ‖x‖ := by
  rw [FinitePlace.norm_def, WithZeroMulInt.toNNReal_neg_apply (absNorm_ne_zero v) (by aesop)]
  apply (two_le_absNorm_nnreal v).trans
  conv_lhs => rw [← zpow_one (v.asIdeal.absNorm : NNReal)]
  apply zpow_le_zpow_right₀ (one_lt_absNorm_nnreal v).le
  simpa [← Int.sub_one_lt_iff, sub_self, ← toAdd_one, Multiplicative.toAdd_lt,
    WithZero.lt_unzero_iff] using Valued.toNormedField.one_lt_norm_iff.1 h

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68aafb0457993edf375efd376cf30cdcb82c5e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
