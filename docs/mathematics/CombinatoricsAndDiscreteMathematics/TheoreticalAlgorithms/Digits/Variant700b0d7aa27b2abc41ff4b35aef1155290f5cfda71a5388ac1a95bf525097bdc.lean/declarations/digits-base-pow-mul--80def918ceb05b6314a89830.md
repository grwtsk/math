# digits_base_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fad3afe-0f16-fc1f-8ef5-4589b7983a45",
  "kind": "theorem",
  "lexical_name": "digits_base_pow_mul",
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
  "slug": "digits-base-pow-mul--80def918ceb05b6314a89830",
  "source": {
    "blob": "926348c089f68a6b6db04e8c0d3f86e0494e91d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 432,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variant700b0d7aa27b2abc41ff4b35aef1155290f5cfda71a5388ac1a95bf525097bdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80def918ceb05b6314a89830f35660103c577064d68e05990979d31cc1362273",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variant700b0d7aa27b2abc41ff4b35aef1155290f5cfda71a5388ac1a95bf525097bdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fad3afe-0f16-fc1f-8ef5-4589b7983a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digits_base_pow_mul {b k m : ℕ} (hb : 1 < b) (hm : 0 < m) :
    digits b (b ^ k * m) = List.replicate k 0 ++ digits b m := by
  induction k generalizing m with
  | zero => simp
  | succ k ih =>
    have hmb : 0 < m * b := lt_mul_of_lt_of_one_lt' hm hb
    let h1 := digits_def' hb hmb
    have h2 : m = m * b / b :=
      Nat.eq_div_of_mul_eq_left (ne_zero_of_lt hb) rfl
    simp only [mul_mod_left, ← h2] at h1
    rw [List.replicate_succ', List.append_assoc, List.singleton_append, ← h1, ← ih hmb]
    ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variant700b0d7aa27b2abc41ff4b35aef1155290f5cfda71a5388ac1a95bf525097bdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variant700b0d7aa27b2abc41ff4b35aef1155290f5cfda71a5388ac1a95bf525097bdc.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926348c089f68a6b6db04e8c0d3f86e0494e91d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
