# existsUnique_continuousMap_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efaf7b4c-8029-6e70-a7f3-5a38c2e75471",
  "kind": "theorem",
  "lexical_name": "existsUnique_continuousMap_lifts",
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
  "slug": "existsunique-continuousmap-lifts--75225ba8cc210f12196da6ae",
  "source": {
    "blob": "2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 488,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75225ba8cc210f12196da6ae1b4b8411f1968e35c035e3cf4163599ebf0e32b1",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efaf7b4c-8029-6e70-a7f3-5a38c2e75471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_continuousMap_lifts [SimplyConnectedSpace A] [LocallyPathConnectedSpace A]
    (f : C(A, X)) (a₀ : A) (e₀ : E) (he : p e₀ = f a₀) :
    ∃! F : C(A, E), F a₀ = e₀ ∧ p ∘ F = f := by
  refine cov.isLocalHomeomorph.existsUnique_continuousMap_lifts f a₀ e₀ he (fun γ γ_0 ↦ ?_)
    fun γ γ' Γ Γ' γ_0 γ'_0 Γ_0 Γ'_0 Γ_lifts Γ'_lifts γγ'1 ↦ ?_
  · simpa [and_comm] using cov.exists_path_lifts (f.comp γ) e₀ (by simp [γ_0, he])
  let pγ : Path a₀ (γ 1) := ⟨γ, γ_0, rfl⟩
  let pγ' : Path a₀ (γ 1) := ⟨γ', γ'_0, γγ'1.symm⟩
  convert!
    cov.liftPath_apply_one_eq_of_homotopicRel
      (ContinuousMap.HomotopicRel.comp_continuousMap (SimplyConnectedSpace.paths_homotopic pγ pγ')
        f)
      e₀ (by simp [he]) (by simp [he]) <;>
    rw [eq_liftPath_iff']
  exacts [⟨Γ_lifts, Γ_0⟩, ⟨Γ'_lifts, Γ'_0⟩]

set_option backward.isDefEq.respectTransparency.types false in
open FundamentalGroup Path.Homotopic.Quotient in
/-- A continuous map `f` from a path connected, locally path-connected space `A` to another
  space `X` lifts uniquely through a covering map `p : E → X` (such that `f a₀` is lifted to `e₀`)
  if `f⁎ π₁(A, a₀) ⊆ p⁎ π₁(E, e₀)`. Proposition 1.33 of [hatcher02], known as
  the lifting criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
