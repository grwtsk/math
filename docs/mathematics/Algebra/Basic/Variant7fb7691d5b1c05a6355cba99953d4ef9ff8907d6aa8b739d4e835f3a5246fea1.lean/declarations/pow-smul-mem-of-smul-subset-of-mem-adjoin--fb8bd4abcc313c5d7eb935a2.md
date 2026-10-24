# pow_smul_mem_of_smul_subset_of_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f6bb63a9900a3bd73a9505f959ac469b339aafc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8af3a96-b9d3-b99a-e60f-0cb66511bc8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6366c3a-6258-0150-187e-413fb27909df",
  "kind": "theorem",
  "lexical_name": "pow_smul_mem_of_smul_subset_of_mem_adjoin",
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
  "slug": "pow-smul-mem-of-smul-subset-of-mem-adjoin--fb8bd4abcc313c5d7eb935a2",
  "source": {
    "blob": "4f6bb63a9900a3bd73a9505f959ac469b339aafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 131,
    "path": "GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8bd4abcc313c5d7eb935a287ee4d177e5e313696d6280ddb17f70dfa4ae170",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6366c3a-6258-0150-187e-413fb27909df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_smul_mem_of_smul_subset_of_mem_adjoin [CommSemiring B] [Algebra R B] [Algebra A B]
    [IsScalarTower R A B] (r : A) (s : Set B) (B' : Subalgebra R B) (hs : r • s ⊆ B') {x : B}
    (hx : x ∈ adjoin R s) (hr : algebraMap A B r ∈ B') : ∃ n₀ : ℕ, ∀ n ≥ n₀, r ^ n • x ∈ B' := by
  change x ∈ Subalgebra.toSubmodule (adjoin R s) at hx
  rw [adjoin_eq_span, Finsupp.mem_span_iff_linearCombination] at hx
  rcases hx with ⟨l, rfl : (l.sum fun (i : Submonoid.closure s) (c : R) => c • (i : B)) = x⟩
  choose n₁ n₂ using fun x : Submonoid.closure s => Submonoid.pow_smul_mem_closure_smul r s x.prop
  use l.support.sup n₁
  intro n hn
  rw [Finsupp.smul_sum]
  refine B'.toSubmodule.sum_mem ?_
  intro a ha
  have : n ≥ n₁ a := le_trans (Finset.le_sup ha) hn
  dsimp only
  rw [← tsub_add_cancel_of_le this, pow_add, ← smul_smul, ←
    IsScalarTower.algebraMap_smul A (l a) (a : B), smul_smul (r ^ n₁ a), mul_comm, ← smul_smul,
    smul_def, map_pow, IsScalarTower.algebraMap_smul]
  apply Subalgebra.mul_mem _ (Subalgebra.pow_mem _ hr _) _
  refine Subalgebra.smul_mem _ ?_ _
  change _ ∈ B'.toSubmonoid
  rw [← Submonoid.closure_eq B'.toSubmonoid]
  apply Submonoid.closure_mono hs (n₂ a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6bb63a9900a3bd73a9505f959ac469b339aafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
