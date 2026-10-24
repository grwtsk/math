# cotangentComplexAux_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d02be95-f752-ca31-e87c-ded26d53e244",
  "kind": "lemma",
  "lexical_name": "cotangentComplexAux_injective",
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
  "slug": "cotangentcomplexaux-injective--ab787c9f1187e1d1e13e9dc3",
  "source": {
    "blob": "5ccb44a1b832c83e42c7f87d86e291096fcf471a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 82,
    "path": "GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab787c9f1187e1d1e13e9dc3c5b1d7b41e26e3b2ca5cea696a8da8fb216934dc",
  "verification": {
    "reference": "docs/verification/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d02be95-f752-ca31-e87c-ded26d53e244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cotangentComplexAux_injective : Function.Injective P.cotangentComplexAux := by
  rw [← LinearMap.ker_eq_bot, eq_bot_iff]
  intro x hx
  obtain ⟨(x : P.ker), rfl⟩ := Cotangent.mk_surjective x
  rw [Submodule.mem_bot, Cotangent.mk_eq_zero_iff]
  rw [LinearMap.mem_ker, P.cotangentComplexAux_zero_iff] at hx
  have : x.val ∈ Ideal.span (Set.range P.relation) := by
    rw [P.span_range_relation_eq_ker]
    exact x.property
  obtain ⟨c, hc⟩ := Finsupp.mem_ideal_span_range_iff_exists_finsupp.mp this
  have heq (i : P.rels) :
      aeval P.val (pderiv (P.map i) <| c.sum fun i a ↦ a * P.relation i) = 0 := by
    rw [hc]
    apply hx
  simp only [Finsupp.sum, map_sum, Derivation.leibniz, smul_eq_mul, map_add, map_mul,
    Presentation.aeval_val_relation, zero_mul, add_zero] at heq
  have heq2 : ∑ i ∈ c.support,
      aeval P.val (c i) • (fun j ↦ aeval P.val (pderiv (P.map j) (P.relation i))) = 0 := by
    ext j
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
    apply heq
  have (i : P.rels) : aeval P.val (c i) = 0 := by
    have := P.linearIndependent_aeval_val_pderiv_relation
    rw [linearIndependent_iff''] at this
    have := this c.support (fun i ↦ aeval P.val (c i))
      (by intro i; simp only [Finsupp.mem_support_iff, ne_eq, not_not]; intro h; simp [h]) heq2
    exact this i
  show _ ∈ P.ker ^ 2
  rw [← hc]
  apply Ideal.sum_mem
  intro i hi
  rw [pow_two]
  apply Ideal.mul_mem_mul
  · rw [P.ker_eq_ker_aeval_val]
    simpa using this i
  · exact P.relation_mem_ker i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardSmoothCotangent/Variant3745073ac7b96143eaaf1ccede62a0b14dbf93a7aad355f4aa53b3d518518cc0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccb44a1b832c83e42c7f87d86e291096fcf471a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
