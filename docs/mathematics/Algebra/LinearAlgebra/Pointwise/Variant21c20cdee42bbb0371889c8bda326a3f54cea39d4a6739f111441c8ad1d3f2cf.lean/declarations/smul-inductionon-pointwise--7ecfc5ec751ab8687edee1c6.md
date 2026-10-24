# smul_inductionOn_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06894c5b-3e33-1cbb-d1fa-a91351a8f09d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54c9bdc4-8b56-097a-0415-8d7aa1af3c10",
  "kind": "lemma",
  "lexical_name": "smul_inductionOn_pointwise",
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
  "slug": "smul-inductionon-pointwise--7ecfc5ec751ab8687edee1c6",
  "source": {
    "blob": "c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 485,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ecfc5ec751ab8687edee1c666318c163f2b9a3e8ec790293e88bb8d7aa43ad7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c9bdc4-8b56-097a-0415-8d7aa1af3c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_inductionOn_pointwise [SMulCommClass S R M] {a : S} {p : (x : M) → x ∈ a • N → Prop}
    (smul₀ : ∀ (s : M) (hs : s ∈ N), p (a • s) (Submodule.smul_mem_pointwise_smul _ _ _ hs))
    (smul₁ : ∀ (r : R) (m : M) (mem : m ∈ a • N), p m mem → p (r • m) (Submodule.smul_mem _ _ mem))
    (add : ∀ (x y : M) (hx : x ∈ a • N) (hy : y ∈ a • N),
      p x hx → p y hy → p (x + y) (Submodule.add_mem _ hx hy))
    (zero : p 0 (Submodule.zero_mem _)) {x : M} (hx : x ∈ a • N) :
    p x hx := by
  simp_all only [← Submodule.singleton_set_smul]
  let p' (x : M) (hx : x ∈ ({a} : Set S) • N) : Prop :=
    p x (by rwa [← Submodule.singleton_set_smul])
  refine Submodule.set_smul_inductionOn (motive := p') _ (N.singleton_set_smul a ▸ hx)
      (fun r n hr hn ↦ ?_) smul₁ add zero
  · simp only [Set.mem_singleton_iff] at hr
    subst hr
    exact smul₀ n hn

-- Note that this can't be generalized to `Set S`, because even though `SMulCommClass R R M` implies
-- `SMulComm R R N` for all `R`-submodules `N`, `SMulCommClass R S N` for all `R`-submodules `N`
-- does not make sense. If we just focus on `R`-submodules that are also `S`-submodule, then this
-- should be true.
/-- A subset of a ring `R` has a multiplicative action on submodules of a module over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant21c20cdee42bbb0371889c8bda326a3f54cea39d4a6739f111441c8ad1d3f2cf.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64aa9956f9a2c4a8c4b0da1ad1fc2a6ca9600ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
