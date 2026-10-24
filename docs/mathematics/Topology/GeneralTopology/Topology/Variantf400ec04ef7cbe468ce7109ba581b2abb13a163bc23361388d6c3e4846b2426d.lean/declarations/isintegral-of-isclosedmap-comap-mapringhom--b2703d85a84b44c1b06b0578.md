# isIntegral_of_isClosedMap_comap_mapRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0c5767f-5719-4b8d-b146-66b1cd07c58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3caf87d-256e-21d9-4170-37fb658854ff",
  "kind": "lemma",
  "lexical_name": "isIntegral_of_isClosedMap_comap_mapRingHom",
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
  "slug": "isintegral-of-isclosedmap-comap-mapringhom--b2703d85a84b44c1b06b0578",
  "source": {
    "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1213,
    "line": 1180,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2703d85a84b44c1b06b057857dd30290e7724629bf61b646f66f1723cd12e8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3caf87d-256e-21d9-4170-37fb658854ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1180–1213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegral_of_isClosedMap_comap_mapRingHom (h : IsClosedMap (comap (mapRingHom f))) :
    f.IsIntegral := by
  algebraize [f]
  suffices Algebra.IsIntegral R S by rwa [Algebra.isIntegral_def] at this
  nontriviality R
  nontriviality S
  constructor
  intro r
  let p : S[X] := C r * X - 1
  have : (1 : R[X]) ∈ Ideal.span {X} ⊔ (Ideal.span {p}).comap (mapRingHom f) := by
    have H := h _ (isClosed_zeroLocus {p})
    rw [← zeroLocus_span, ← closure_eq_iff_isClosed, closure_image_comap_zeroLocus] at H
    rw [← Ideal.eq_top_iff_one, sup_comm, ← zeroLocus_empty_iff_eq_top, zeroLocus_sup, H]
    suffices ∀ (a : PrimeSpectrum S[X]), p ∈ a.asIdeal → X ∉ a.asIdeal by
      simpa [Set.eq_empty_iff_forall_notMem]
    intro q hpq hXq
    have : 1 ∈ q.asIdeal := by simpa [p] using! (sub_mem (q.asIdeal.mul_mem_left (C r) hXq) hpq)
    exact q.2.ne_top (q.asIdeal.eq_top_iff_one.mpr this)
  obtain ⟨a, b, hb, e⟩ := Ideal.mem_span_singleton_sup.mp this
  obtain ⟨c, hc : b.map (algebraMap R S) = _⟩ := Ideal.mem_span_singleton.mp hb
  refine ⟨b.reverse * X ^ (1 + c.natDegree), ?_, ?_⟩
  · refine Monic.mul ?_ (by simp)
    have h : b.coeff 0 = 1 := by simpa using! congr(($e).coeff 0)
    have : b.natTrailingDegree = 0 := by simp [h]
    rw [Monic.def, reverse_leadingCoeff, trailingCoeff, this, h]
  · have : p.natDegree ≤ 1 := by simpa using! natDegree_linear_le (a := r) (b := -1)
    rw [eval₂_eq_eval_map, reverse, Polynomial.map_mul, ← reflect_map, Polynomial.map_pow,
      map_X, ← revAt_zero (1 + _), ← reflect_monomial,
      ← reflect_mul _ _ natDegree_map_le (by simp), pow_zero, mul_one, hc,
      ← add_assoc, reflect_mul _ _ (this.trans (by simp)) le_rfl,
      eval_mul, reflect_sub, reflect_mul _ _ (by simp) (by simp)]
    simp [← pow_succ']

variable (R S) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean#L1180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8595a4eca910e154d0983fef668e2cc977aa1a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
