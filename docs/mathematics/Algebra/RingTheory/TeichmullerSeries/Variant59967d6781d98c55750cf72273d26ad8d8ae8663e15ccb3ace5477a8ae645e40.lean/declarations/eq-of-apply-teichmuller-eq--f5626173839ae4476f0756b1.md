# eq_of_apply_teichmuller_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8714ae7684d947f338959aee6e8abfdadb4027be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa3a979d-bad0-21dc-3dbb-e9050ca0cf1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe724149-94de-c5f0-2c6b-ce19bdc851b3",
  "kind": "theorem",
  "lexical_name": "eq_of_apply_teichmuller_eq",
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
  "slug": "eq-of-apply-teichmuller-eq--f5626173839ae4476f0756b1",
  "source": {
    "blob": "8714ae7684d947f338959aee6e8abfdadb4027be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 118,
    "path": "GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5626173839ae4476f0756b18fadfdd125bbc001ece804c03c963a9d6d9ca684",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe724149-94de-c5f0-2c6b-ce19bdc851b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_apply_teichmuller_eq
    {S : Type*} [CommRing S] (f g : 𝕎 R →+* S) (hp : IsNilpotent (p : S))
    (h : ∀ (x : R), f (teichmuller p x) = g (teichmuller p x)) : f = g := by
  obtain ⟨n, hn⟩ := hp
  ext x
  obtain ⟨c, hc⟩ := (dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff x n)
  calc
    f x = f (x - ∑ (i ≤ n), teichmuller p (((_root_.frobeniusEquiv R p).symm ^ i)
        (x.coeff i)) * p ^ i) + f (∑ (i ≤ n), teichmuller p
        (((_root_.frobeniusEquiv R p).symm ^ i) (x.coeff i)) * p ^ i) := by simp
    _ = ∑ (i ≤ n), f (teichmuller p (((_root_.frobeniusEquiv R p).symm ^ i)
        (x.coeff i))) * p ^ i := by rw [hc]; simp [pow_succ, hn]
    _ = ∑ (i ≤ n), g (teichmuller p
        (((_root_.frobeniusEquiv R p).symm ^ i) (x.coeff i))) * p ^ i := by simp [h]
    _ = g (x - ∑ (i ≤ n), teichmuller p (((_root_.frobeniusEquiv R p).symm ^ i)
        (x.coeff i)) * p ^ i) + g (∑ (i ≤ n), teichmuller p (((_root_.frobeniusEquiv R p).symm ^ i)
        (x.coeff i)) * p ^ i) := by rw [hc]; simp [pow_succ, hn]
    _ = g x := by simp

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8714ae7684d947f338959aee6e8abfdadb4027be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
