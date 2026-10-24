# toNat_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7341c00066b6cdfa8eeeee30164f6265acdd1a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c44b1a3-76b2-374a-c0cb-309aa173b9df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2da59f5-ca44-2dbc-1978-cdfed8ef6acd",
  "kind": "theorem",
  "lexical_name": "toNat_lt",
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
  "slug": "tonat-lt--53bc7e8e168624a5af682cda",
  "source": {
    "blob": "e7341c00066b6cdfa8eeeee30164f6265acdd1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53bc7e8e168624a5af682cdafafd3231d22133ff97fd16fdf9cd3e6194208f2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2da59f5-ca44-2dbc-1978-cdfed8ef6acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNat_lt {n : ℕ} (v : Bitvec n) : v.toNat < 2 ^ n := by
  suffices : v.toNat + 1 ≤ 2 ^ n; simpa
  rw [toNat_eq_foldr_reverse]
  cases' v with xs h
  dsimp [Bitvec.toNat, bitsToNat]
  rw [← List.length_reverse] at h
  generalize xs.reverse = ys at h
  induction' ys with head tail ih generalizing n
  · simp [← h]
  · simp only [← h, pow_add, flip, List.length, List.foldr, pow_one]
    rw [addLsb_eq_twice_add_one]
    trans 2 * List.foldr (fun (x : Bool) (y : ℕ) => addLsb y x) 0 tail + 2 * 1
    -- Porting note: removed `ac_mono`, `mono` calls
    · rw [add_assoc]
      apply Nat.add_le_add_left
      cases head <;> simp only
    · rw [← left_distrib]
      rw [mul_comm _ 2]
      apply Nat.mul_le_mul_left
      exact ih rfl
#align bitvec.to_nat_lt Bitvec.toNat_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant230e4f0860c1f35cc80852aa2372af3fa052e048de646118cc0b6018b825411b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7341c00066b6cdfa8eeeee30164f6265acdd1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
