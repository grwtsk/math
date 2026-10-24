# ofDigits_mod_pow_eq_ofDigits_take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1a8cd11-1a17-7afd-4b89-969a352665de",
  "kind": "lemma",
  "lexical_name": "ofDigits_mod_pow_eq_ofDigits_take",
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
  "slug": "ofdigits-mod-pow-eq-ofdigits-take--cfd0dceb7aba514f3969f313",
  "source": {
    "blob": "ce326d6ce1cc1756f0dc5b72795e922c48bbbfa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd0dceb7aba514f3969f3130af3258a8d9c7b3f33e9dc238d03ba6d386cd794",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1a8cd11-1a17-7afd-4b89-969a352665de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofDigits_mod_pow_eq_ofDigits_take
    {p : ℕ} (i : ℕ) (hpos : 0 < p) (digits : List ℕ) (w₁ : ∀ l ∈ digits, l < p) :
    ofDigits p digits % p ^ i = ofDigits p (digits.take i) := by
  induction i generalizing digits with
  | zero => simp [mod_one]
  | succ i ih =>
    cases digits with
    | nil => simp
    | cons hd tl =>
      rw [List.take_succ_cons, ofDigits_cons, ofDigits_cons,
        ← ih _ fun x hx ↦ w₁ x <| List.mem_cons_of_mem hd hx, add_mod,
        mod_eq_of_lt <| lt_of_lt_of_le (w₁ hd List.mem_cons_self) (le_pow <| add_one_pos i),
        pow_succ', mul_mod_mul_left, mod_eq_of_lt]
      apply add_lt_of_lt_sub
      apply lt_of_lt_of_le (b := p)
      · exact w₁ hd List.mem_cons_self
      · rw [← Nat.mul_sub]
        exact Nat.le_mul_of_pos_right _ <| Nat.sub_pos_of_lt <| mod_lt _ <| pow_pos hpos i

/-- `n` modulo `p^i` is like taking the least significant `i` digits of `n` in base `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant967ff237907dd1ed61543b738eec70a5bfc84128402d11fc2b146c56cf0171bf.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce326d6ce1cc1756f0dc5b72795e922c48bbbfa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
