# existsUnique_algebraMap_eq_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63c361a6-d5bd-4c77-bbef-f3b4f1e63808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f43781ae-a6e4-cbd4-7aa5-c9a5b46c85bc",
  "kind": "theorem",
  "lexical_name": "existsUnique_algebraMap_eq_of_span_eq_top",
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
  "slug": "existsunique-algebramap-eq-of-span-eq-top--397a50d86ee829fc484e7f84",
  "source": {
    "blob": "8bed43f5f6144ba0ab91e399cabe5050d7f4fb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 569,
    "path": "GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397a50d86ee829fc484e7f84ff1dc2a96a054c053cf6adbd14e5104ec41d3a17",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f43781ae-a6e4-cbd4-7aa5-c9a5b46c85bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_algebraMap_eq_of_span_eq_top (s : Set R) (span_eq : Ideal.span s = ⊤)
    (f : Π a : s, Away a.1) (h : ∀ a b : s,
      Away.awayToAwayRight (P := Away (a * b : R)) a.1 b (f a) = Away.awayToAwayLeft b.1 a (f b)) :
    ∃! r : R, ∀ a : s, algebraMap R _ r = f a := by
  have mem := (Ideal.eq_top_iff_one _).mp span_eq; clear span_eq
  wlog finset_eq : ∃ t : Finset R, t = s generalizing s
  · have ⟨t, hts, mem⟩ := Submodule.mem_span_finite_of_mem_span mem
    have ⟨r, eq, uniq⟩ := this t (fun a ↦ f ⟨a, hts a.2⟩)
      (fun a b ↦ h ⟨a, hts a.2⟩ ⟨b, hts b.2⟩) mem ⟨_, rfl⟩
    refine ⟨r, fun a ↦ ?_, fun _ eq ↦ uniq _ fun a ↦ eq ⟨a, hts a.2⟩⟩
    replace hts := Set.insert_subset a.2 hts
    classical
    have ⟨r', eq, _⟩ := this ({a.1} ∪ t) (fun a ↦ f ⟨a, hts a.2⟩) (fun a b ↦
      h ⟨a, hts a.2⟩ ⟨b, hts b.2⟩) (Ideal.span_mono (fun _ ↦ .inr) mem) ⟨{a.1} ∪ t, by simp⟩
    exact (congr_arg _ (uniq _ fun b ↦ eq ⟨b, .inr b.2⟩).symm).trans (eq ⟨a, .inl rfl⟩)
  have span_eq := (Ideal.eq_top_iff_one _).mpr mem
  refine existsUnique_of_exists_of_unique ?_ fun x y hx hy ↦
    algebraMap_injective_of_span_eq_top s span_eq (funext fun a ↦ (hx a).trans (hy a).symm)
  obtain ⟨s, rfl⟩ := finset_eq
  choose n r eq using fun a ↦ Away.surj a.1 (f a)
  let N := s.attach.sup n
  let r a := a ^ (N - n a) * r a
  have eq a : f a * algebraMap R _ (a ^ N) = algebraMap R _ (r a) := by
    rw [map_mul, ← eq, mul_left_comm, ← map_pow, ← map_mul, ← pow_add,
      Nat.sub_add_cancel (Finset.le_sup <| s.mem_attach a)]
  have eq2 a b : ∃ N', (a * b) ^ N' * (r a * b ^ N) = (a * b) ^ N' * (r b * a ^ N) :=
    Away.exists_of_eq (S := Away (a * b : R)) _ <| by
      simp_rw [map_mul, ← Away.awayToAwayRight_eq (S := Away a.1) a.1 b (r a),
        ← Away.awayToAwayLeft_eq (S := Away b.1) b.1 a (r b), ← eq, map_mul,
        Away.awayToAwayRight_eq, Away.awayToAwayLeft_eq, h, mul_assoc, ← map_mul, mul_comm]
  choose N' hN' using eq2
  let N' := (s ×ˢ s).attach.sup fun a ↦ N'
    ⟨_, (Finset.mem_product.mp a.2).1⟩ ⟨_, (Finset.mem_product.mp a.2).2⟩
  have eq2 a b : (a * b) ^ N' * (r a * b ^ N) = (a * b) ^ N' * (r b * a ^ N) := by
    dsimp only [N']; rw [← Nat.sub_add_cancel (Finset.le_sup <| (Finset.mem_attach _ ⟨⟨a, b⟩,
      Finset.mk_mem_product a.2 b.2⟩)), pow_add, mul_assoc, hN', ← mul_assoc]
  let N := N' + N
  let r a := a ^ N' * r a
  have eq a : f a * algebraMap R _ (a ^ N) = algebraMap R _ (r a) := by
    rw [map_mul, ← eq, mul_left_comm, ← map_mul, ← pow_add]
  have eq2 a b : r a * b ^ N = r b * a ^ N := by
    rw [pow_add, mul_mul_mul_comm, ← mul_pow, eq2,
      mul_comm a.1, mul_pow, mul_mul_mul_comm, ← pow_add]
  have ⟨c, eq1⟩ := (Submodule.mem_span_range_iff_exists_fun _).mp <|
    (Ideal.eq_top_iff_one _).mp <| (Set.image_eq_range _ _ ▸ Ideal.span_pow_eq_top _ span_eq N)
  refine ⟨∑ b, c b * r b, fun a ↦ ((Away.algebraMap_isUnit a.1).pow N).mul_left_inj.mp ?_⟩
  simp_rw [← map_pow, eq, ← map_mul, Finset.sum_mul, mul_assoc, eq2 _ a, mul_left_comm (c _),
    ← Finset.mul_sum, ← smul_eq_mul (a := c _), eq1, mul_one]

/-- If `x ≠ 0`, then the localization of a domain away from `x` is again a domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant546fba4376cf5014763e2f2702424ec80a11cefeca34423ea71d6bce9865f662.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bed43f5f6144ba0ab91e399cabe5050d7f4fb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
