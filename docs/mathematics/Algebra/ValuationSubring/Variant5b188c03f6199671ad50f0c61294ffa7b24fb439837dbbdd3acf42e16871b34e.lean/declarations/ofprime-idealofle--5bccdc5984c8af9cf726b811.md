# ofPrime_idealOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7984ce1909c32310a0ed7719e002efbc0b423603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 305,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddb65ab9-d3d6-ad2c-2ba7-81c4e155e8ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81174f84-fde6-e2a5-fa24-fee59fe9e9a1",
  "kind": "theorem",
  "lexical_name": "ofPrime_idealOfLE",
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
  "slug": "ofprime-idealofle--5bccdc5984c8af9cf726b811",
  "source": {
    "blob": "7984ce1909c32310a0ed7719e002efbc0b423603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 305,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bccdc5984c8af9cf726b8119dc17b3679fab8f2be7eea2bf1e6b2edd82d7f31",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81174f84-fde6-e2a5-fa24-fee59fe9e9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofPrime_idealOfLE (R S : ValuationSubring K) (h : R ≤ S) :
    ofPrime R (idealOfLE R S h) = S := by
  ext x; constructor
  · rintro ⟨a, r, hr, rfl⟩; apply mul_mem; · exact h a.2
    · rw [← valuation_le_one_iff, map_inv₀, ← inv_one, inv_le_inv₀]
      · exact not_lt.1 ((not_iff_not.2 <| valuation_lt_one_iff S _).1 hr)
      · simpa [Valuation.pos_iff] using fun hr₀ ↦ hr₀ ▸ hr <| Ideal.zero_mem (R.idealOfLE S h)
      · exact zero_lt_one
  · intro hx; by_cases hr : x ∈ R; · exact R.le_ofPrime _ hr
    have : x ≠ 0 := fun h => hr (by rw [h]; exact R.zero_mem)
    replace hr := (R.mem_or_inv_mem x).resolve_left hr
    refine ⟨1, ⟨x⁻¹, hr⟩, ?_, ?_⟩
    · simp only [Ideal.primeCompl, Submonoid.mem_mk, Subsemigroup.mem_mk, Set.mem_compl_iff,
        SetLike.mem_coe, idealOfLE, Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
        not_not]
      change IsUnit (⟨x⁻¹, h hr⟩ : S)
      apply isUnit_of_mul_eq_one _ (⟨x, hx⟩ : S)
      ext; field_simp
    · field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7984ce1909c32310a0ed7719e002efbc0b423603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
