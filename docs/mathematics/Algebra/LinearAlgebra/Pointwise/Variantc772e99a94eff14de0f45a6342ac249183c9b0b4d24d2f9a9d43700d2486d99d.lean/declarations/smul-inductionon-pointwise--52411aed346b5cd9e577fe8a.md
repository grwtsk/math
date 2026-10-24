# smul_inductionOn_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ad5aff-e338-4273-510f-bec596aab36e",
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
  "slug": "smul-inductionon-pointwise--52411aed346b5cd9e577fe8a",
  "source": {
    "blob": "022e679f0a3d7e6a5ae1ae1d8c59830a1642d397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 493,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52411aed346b5cd9e577fe8a5849dbddf973aeb24c7fea2e2c6e7acbc16b638b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ad5aff-e338-4273-510f-bec596aab36e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–513.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantc772e99a94eff14de0f45a6342ac249183c9b0b4d24d2f9a9d43700d2486d99d.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `022e679f0a3d7e6a5ae1ae1d8c59830a1642d397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
