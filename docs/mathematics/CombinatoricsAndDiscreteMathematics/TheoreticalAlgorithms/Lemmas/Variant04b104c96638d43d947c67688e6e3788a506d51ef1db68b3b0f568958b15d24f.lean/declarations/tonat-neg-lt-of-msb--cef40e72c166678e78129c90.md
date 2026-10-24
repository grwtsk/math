# toNat_neg_lt_of_msb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4353eb40-2cf0-33bf-458e-5391267d8568",
  "kind": "theorem",
  "lexical_name": "toNat_neg_lt_of_msb",
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
  "slug": "tonat-neg-lt-of-msb--cef40e72c166678e78129c90",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5934,
    "line": 5921,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cef40e72c166678e78129c90356993dfd60913ee52b9027a8fb8fb073357bbac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4353eb40-2cf0-33bf-458e-5391267d8568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5921–5934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNat_neg_lt_of_msb (x : BitVec w) (hmsb : x.msb = true) :
    (-x).toNat ≤ 2^(w-1) := by
  rcases w with _|w
  · simp [BitVec.eq_nil x]
  · by_cases hx : x = 0#(w + 1)
    · simp [hx]
    · have := BitVec.le_toNat_of_msb_true hmsb
      have := toNat_pos_of_ne_zero hx
      rw [toNat_neg, Nat.mod_eq_of_lt (by omega), ← Nat.two_pow_pred_add_two_pow_pred (by omega),
        ← Nat.two_mul]
      omega

/-! ### abs -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L5921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
