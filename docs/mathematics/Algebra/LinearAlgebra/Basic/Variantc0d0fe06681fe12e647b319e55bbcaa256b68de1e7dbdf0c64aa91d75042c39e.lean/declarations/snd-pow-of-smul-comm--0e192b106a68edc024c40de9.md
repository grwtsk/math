# snd_pow_of_smul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba76f7b04ecf154170ced7e3cfa80b3162c7ba51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42271fce-e2a8-808b-baf4-d5b8e5fee82e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1df49d83-88f3-567f-7a54-71199d82fda7",
  "kind": "theorem",
  "lexical_name": "snd_pow_of_smul_comm",
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
  "slug": "snd-pow-of-smul-comm--0e192b106a68edc024c40de9",
  "source": {
    "blob": "ba76f7b04ecf154170ced7e3cfa80b3162c7ba51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 572,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e192b106a68edc024c40de9b366797e9b7f0f3a9980c85688b336b7c55b7968",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df49d83-88f3-567f-7a54-71199d82fda7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_pow_of_smul_comm [Monoid R] [AddMonoid M] [DistribMulAction R M]
    [DistribMulAction Rᵐᵒᵖ M] [SMulCommClass R Rᵐᵒᵖ M] (x : tsze R M) (n : ℕ)
    (h : x.snd <• x.fst = x.fst •> x.snd) : snd (x ^ n) = n • x.fst ^ n.pred •> x.snd := by
  simp_rw [snd_pow_eq_sum, ← smul_comm (_ : R) (_ : Rᵐᵒᵖ), aux, smul_smul, ← pow_add]
  match n with
  | 0 => rw [Nat.pred_zero, pow_zero, List.range_zero, zero_smul, List.map_nil, List.sum_nil]
  | (Nat.succ n) =>
    simp_rw [Nat.pred_succ]
    exact (List.sum_eq_length_nsmul _ (x.fst ^ n • x.snd) (by grind)).trans
      (by rw [List.length_map, List.length_range])
where
  aux : ∀ n : ℕ, x.snd <• x.fst ^ n = x.fst ^ n •> x.snd := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [pow_succ, op_mul, mul_smul, mul_smul, ← h, smul_comm (_ : R) (op x.fst) x.snd, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba76f7b04ecf154170ced7e3cfa80b3162c7ba51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
