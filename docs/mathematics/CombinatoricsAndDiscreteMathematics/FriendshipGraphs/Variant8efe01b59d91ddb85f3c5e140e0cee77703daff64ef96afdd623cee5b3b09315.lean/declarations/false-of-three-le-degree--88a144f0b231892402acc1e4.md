# false_of_three_le_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e80331205a7d1a5b9ba1ca5d3ddbc77084cae45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ef32c16-7ace-31d3-26fa-512d9657fa8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8d89542-e4a0-377c-abb8-dd884b15c7c1",
  "kind": "theorem",
  "lexical_name": "false_of_three_le_degree",
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
  "slug": "false-of-three-le-degree--88a144f0b231892402acc1e4",
  "source": {
    "blob": "0e80331205a7d1a5b9ba1ca5d3ddbc77084cae45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a144f0b231892402acc1e42288d93a61e2354dd33f07d41b49d31c3b6d90ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d89542-e4a0-377c-abb8-dd884b15c7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem false_of_three_le_degree (hd : G.IsRegularOfDegree d) (h : 3 ≤ d) : False := by
  -- get a prime factor of d - 1
  let p : ℕ := (d - 1).minFac
  have p_dvd_d_pred := (ZMod.natCast_zmod_eq_zero_iff_dvd _ _).mpr (d - 1).minFac_dvd
  have dpos : 1 ≤ d := by omega
  have d_cast : ↑(d - 1) = (d : ℤ) - 1 := by norm_cast
  haveI : Fact p.Prime := ⟨Nat.minFac_prime (by omega)⟩
  have hp2 : 2 ≤ p := (Fact.out (p := p.Prime)).two_le
  have dmod : (d : ZMod p) = 1 := by
    rw [← Nat.succ_pred_eq_of_pos dpos, Nat.succ_eq_add_one, Nat.pred_eq_sub_one]
    simp only [add_eq_right, Nat.cast_add, Nat.cast_one]
    exact p_dvd_d_pred
  have Vmod := card_mod_p_of_regular hG dmod hd
  -- now we reduce to a trace calculation
  have := ZMod.trace_pow_card (G.adjMatrix (ZMod p))
  contrapose! this; clear this
  -- the trace is 0 mod p when computed one way
  rw [trace_adjMatrix, zero_pow this.out.ne_zero]
  -- but the trace is 1 mod p when computed the other way
  rw [adjMatrix_pow_mod_p_of_regular hG dmod hd hp2]
  dsimp only [Fintype.card] at Vmod
  simp only [Matrix.trace, Matrix.diag, mul_one, nsmul_eq_mul, LinearMap.coe_mk, sum_const,
    of_apply, Ne]
  rw [Vmod, ← Nat.cast_one (R := ZMod (Nat.minFac (d - 1))), ZMod.natCast_zmod_eq_zero_iff_dvd,
    Nat.dvd_one, Nat.minFac_eq_one_iff]
  omega

open scoped Classical in
include hG in
/-- If `d ≤ 1`, a `d`-regular friendship graph has at most one vertex, which is
  trivially a politician. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant8efe01b59d91ddb85f3c5e140e0cee77703daff64ef96afdd623cee5b3b09315.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e80331205a7d1a5b9ba1ca5d3ddbc77084cae45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
