# cyclotomic_eq_prod_X_sub_primitiveRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "570e302a07f58e3be1a80aafcfa264d5c78e6f0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcd7900f-507b-e7c8-7d2e-7a6ceaf2decc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d018684f-d90c-0614-6a04-aa2ca5b94db5",
  "kind": "theorem",
  "lexical_name": "cyclotomic_eq_prod_X_sub_primitiveRoots",
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
  "slug": "cyclotomic-eq-prod-x-sub-primitiveroots--359c7f7a49b9706f2f82c411",
  "source": {
    "blob": "570e302a07f58e3be1a80aafcfa264d5c78e6f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 465,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359c7f7a49b9706f2f82c411a50a00798af86460c054d873f0ae9d54d24fdd40",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d018684f-d90c-0614-6a04-aa2ca5b94db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_eq_prod_X_sub_primitiveRoots {K : Type*} [CommRing K] [IsDomain K] {ζ : K}
    {n : ℕ} (hz : IsPrimitiveRoot ζ n) : cyclotomic n K = ∏ μ ∈ primitiveRoots n K, (X - C μ) := by
  rw [← cyclotomic']
  induction' n using Nat.strong_induction_on with k hk generalizing ζ
  obtain hzero | hpos := k.eq_zero_or_pos
  · simp only [hzero, cyclotomic'_zero, cyclotomic_zero]
  have h : ∀ i ∈ k.properDivisors, cyclotomic i K = cyclotomic' i K := by
    intro i hi
    obtain ⟨d, hd⟩ := (Nat.mem_properDivisors.1 hi).1
    rw [mul_comm] at hd
    exact hk i (Nat.mem_properDivisors.1 hi).2 (IsPrimitiveRoot.pow hpos hz hd)
  rw [@cyclotomic_eq_X_pow_sub_one_div _ _ _ hpos, cyclotomic'_eq_X_pow_sub_one_div hpos hz,
    Finset.prod_congr (refl k.properDivisors) h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e302a07f58e3be1a80aafcfa264d5c78e6f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
