# _root_.ContMDiffAt.iff_comp_isImmersionAtOfComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3215dd28-c87c-3231-f9d6-d04e5bd56478",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bfa7275-9d3c-049c-0252-54ac0d7749bb",
  "kind": "lemma",
  "lexical_name": "_root_.ContMDiffAt.iff_comp_isImmersionAtOfComplement",
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
  "slug": "root-contmdiffat-iff-comp-isimmersionatofcomplement--0ffeff2cc6b753d62c9718a2",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 493,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ffeff2cc6b753d62c9718a2cd3f1092b7dbaef465fe82cf3464b168192178c3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfa7275-9d3c-049c-0252-54ac0d7749bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ContMDiffAt.iff_comp_isImmersionAtOfComplement
    {f : M → N} {φ : N → N'} (hφ : IsImmersionAtOfComplement F J J' n φ (f x)) :
    -- Note: `φ` need not be inducing, so continuity of `φ ∘ f` at `x`
    -- generally does not imply continuity of `f`
    CMDiffAt n f x ↔ ContinuousAt f x ∧ CMDiffAt n (φ ∘ f) x := by
  refine ⟨fun hf ↦ ⟨hf.continuousAt, hφ.contMDiffAt.comp x hf⟩, fun ⟨hf, h'⟩ ↦ ?_⟩
  -- Since `f` is continuous at `x`, some neighbourhood `t` of `x` is mapped
  -- into `hφ.domChart.source` under `f`. By restriction, we may assume `t` is open,
  -- so it suffices to test smoothness on `t`.
  have : hφ.domChart.source ∈ 𝓝 (f x) := hφ.domChart.open_source.mem_nhds hφ.mem_domChart_source
  obtain ⟨t, ht, htopen, hxt⟩ := mem_nhds_iff.mp (hf this)
  suffices CMDiffAt[t] n f x from this.contMDiffAt <| htopen.mem_nhds hxt
  -- We test smoothness of `f` on `t` in the preferred chart at `x` and `hφ.codChart`.
  rw [contMDiffWithinAt_iff_of_mem_maximalAtlas'
    hφ.domChart_mem_maximalAtlas hφ.mem_domChart_source]
  refine ⟨hf.continuousWithinAt, ?_⟩
  exact aux hφ h' ht hxt

-- Special case of "the composition of immersions is an immersion", for post-composing
-- with a diffeomorphism: unlike the former (which requires Banach manifolds and some conditions
-- on the boundary behaviour), this statement is always true.
-- Note that generalizing this proof to diffeomorphisms w.r.t. different models with corners is not
-- trivial: constructing a codomain chart from `h.codChart` requires a nice map between
-- the topological spaces that `N` and `N'` are modelled on. `Φ` does not induce such a map.
-- Also, for `n = 0` it is not obvious that `E''` and `E'''` are continuously linearly equivalent.
-- The current version may be good enough in practice.
/-- Post-composing an immersion at `x` with a diffeomorphism for the same model with corners
still yields an immersion at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
