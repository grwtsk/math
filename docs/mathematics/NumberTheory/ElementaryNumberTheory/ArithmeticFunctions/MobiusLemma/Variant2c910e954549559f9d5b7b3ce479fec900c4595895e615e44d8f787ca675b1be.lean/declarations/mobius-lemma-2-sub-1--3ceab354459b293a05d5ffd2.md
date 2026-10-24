# mobius_lemma_2_sub_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab5652a9-34c3-bc58-e602-288f7cace3c9",
  "kind": "theorem",
  "lexical_name": "mobius_lemma_2_sub_1",
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
  "slug": "mobius-lemma-2-sub-1--3ceab354459b293a05d5ffd2",
  "source": {
    "blob": "7774530b068098c253438684ce708e5cd50f6a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 423,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ceab354459b293a05d5ffd2f4a12d8d34e80a2eda9027dcdd09afb5dc2ee29e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5652a9-34c3-bc58-e602-288f7cace3c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_lemma_2_sub_1 (x : ℝ) (hx : x > 0) (K : ℕ) (hK : (K : ℝ) ≤ x) :
    ∑ k ∈ Ioc 0 ⌊x⌋₊, M (sqrt (x / k)) = ∑ k ∈ range (K + 1), M (sqrt (x / k)) +
      ∑ k ∈ Ico (K + 1) (⌊x⌋₊ + 2), ∫ _ in (k - 0.5)..(k + 0.5), (M (sqrt (x / k)) : ℝ) := by
  norm_num [sum_Ico_eq_sub]
  rw [sum_range_add_sum_Ico]
  · erw [← Icc_succ_left_eq_Ioc, sum_Ico_eq_sub _]
    · norm_num [Finset.sum_range_succ, M]
      rw [Nat.floor_eq_zero.mpr]
      · norm_num
      · rw [div_lt_one (by positivity), sqrt_lt_sqrt_iff] <;> linarith [Nat.lt_floor_add_one x]
    · simp
  · linarith [Nat.le_floor hK]

@[blueprint
  "mobius-lemma-2-sub-2"
  (title := "Mobius Lemma 2 - second step")
  (statement := /--
    For any $K \leq x$, for $f(u) = M(\sqrt{x/u})$,
    \[\sum_{K < k\leq x+1} \int_{k-\frac{1}{2}}^{k+\frac{1}{2}} f(u) du =
      \int_{K+\frac{1}{2}}^{\lfloor x\rfloor + \frac{3}{2}} f(u) du =
      \int_{K+\frac{1}{2}}^x f(u) du,\]
  -/)
  (proof := /--
    This is just splitting the integral at $K$, since $f(u) = M(\sqrt{x/u}) = 0$ for $x>u$.
  -/)
  (latexEnv := "sublemma")
  (discussion := 529)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7774530b068098c253438684ce708e5cd50f6a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
