# sum_pow_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "460cbc0ff23243f509960c3ec0b62c40f752aab8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f60701b-f502-a427-87b5-e0aa4d6b0d6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d85b0b-6654-0716-8079-5da0a87229c8",
  "kind": "theorem",
  "lexical_name": "sum_pow_units",
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
  "slug": "sum-pow-units--ac87da992f3a410a1025690a",
  "source": {
    "blob": "460cbc0ff23243f509960c3ec0b62c40f752aab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 290,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac87da992f3a410a1025690a4d4573152ef436ed4d010dfef1940f0881f4a45a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d85b0b-6654-0716-8079-5da0a87229c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_pow_units [DecidableEq K] (i : ℕ) :
    (∑ x : Kˣ, (x ^ i : K)) = if q - 1 ∣ i then -1 else 0 := by
  let φ : Kˣ →* K :=
    { toFun := fun x => x ^ i
      map_one' := by simp
      map_mul' := by simp [mul_pow] }
  have : Decidable (φ = 1) := by classical infer_instance
  calc (∑ x : Kˣ, φ x) = if φ = 1 then Fintype.card Kˣ else 0 := sum_hom_units φ
      _ = if q - 1 ∣ i then -1 else 0 := by
        suffices q - 1 ∣ i ↔ φ = 1 by
          simp only [this]
          split_ifs; swap
          · exact Nat.cast_zero
          · rw [Fintype.card_units, Nat.cast_sub,
              cast_card_eq_zero, Nat.cast_one, zero_sub]
            show 1 ≤ q; exact Fintype.card_pos_iff.mpr ⟨0⟩
        rw [← forall_pow_eq_one_iff, DFunLike.ext_iff]
        apply forall_congr'; intro x; simp [φ, Units.ext_iff]

/-- The sum of `x ^ i` as `x` ranges over a finite field of cardinality `q`
is equal to `0` if `i < q - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant5e92972b7030c2b6a27bf66ea79de25a7a24e7b2110a840f7fb877fb8c7268c5.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460cbc0ff23243f509960c3ec0b62c40f752aab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
