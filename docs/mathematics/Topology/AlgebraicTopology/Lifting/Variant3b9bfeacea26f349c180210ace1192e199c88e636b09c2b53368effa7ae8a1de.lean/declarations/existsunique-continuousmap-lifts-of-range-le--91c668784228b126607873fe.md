# existsUnique_continuousMap_lifts_of_range_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5548fc16-bfaf-7f7e-dca5-d30cb72c1fb3",
  "kind": "theorem",
  "lexical_name": "existsUnique_continuousMap_lifts_of_range_le",
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
  "slug": "existsunique-continuousmap-lifts-of-range-le--91c668784228b126607873fe",
  "source": {
    "blob": "2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 510,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c668784228b126607873fe5458857df5a5b3d498965ecf544a0aaffb9b6d55",
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

Occurrence: `result:5548fc16-bfaf-7f7e-dca5-d30cb72c1fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_continuousMap_lifts_of_range_le
    [PathConnectedSpace A] [LocallyPathConnectedSpace A]
    {f : C(A, X)} {a₀ : A} {e₀ : E} (he : p e₀ = f a₀)
    (le : (map f a₀).range ≤ (mapOfEq ⟨p, cov.continuous⟩ he).range) :
    ∃! F : C(A, E), F a₀ = e₀ ∧ p ∘ F = f := by
  refine cov.isLocalHomeomorph.existsUnique_continuousMap_lifts f a₀ e₀ he (fun γ γ_0 ↦ ?_)
    fun γ γ' Γ Γ' γ_0 γ'_0 Γ_0 Γ'_0 Γ_lifts Γ'_lifts γγ'1 ↦ ?_
  · simpa [and_comm] using cov.exists_path_lifts (f.comp γ) e₀ (by simp [γ_0, he])
  rw [(cov.eq_liftPath_iff' <| by simp [γ_0, he]).mpr ⟨Γ_lifts, Γ_0⟩,
    (cov.eq_liftPath_iff' <| by simp [γ'_0, he]).mpr ⟨Γ'_lifts, Γ'_0⟩]
  let pγ : Path a₀ (γ 1) := ⟨γ, γ_0, rfl⟩
  let pγ' : Path a₀ (γ 1) := ⟨γ', γ'_0, γγ'1.symm⟩
  change (cov.monodromy (.mk <| pγ.map f.continuous) ⟨e₀, he⟩).1 =
    (cov.monodromy (.mk <| pγ'.map f.continuous) ⟨e₀, he⟩).1
  rw [← Subtype.ext_iff]
  apply (cov.monodromy_bijective <| .mk (pγ'.map f.continuous).symm).1
  simp_rw [← monodromy_trans_apply, ← mk_trans]
  conv_rhs => rw [← eq.2 ⟨.reflTransSymm _⟩, mk_refl, monodromy_refl]
  rw [Path.map_symm, ← Path.map_trans]
  set pγγ' : Path a₀ a₀ := pγ.trans pγ'.symm
  obtain ⟨⟨pΓΓ'⟩, eq⟩ := le ⟨fromPath (.mk pγγ'), rfl⟩
  rw [mapOfEq_apply, map_apply, ← mk_map] at eq
  exact eq ▸ Subtype.ext congr($(cov.monodromy_map <| .mk _))

end homotopy_lifting

end IsCoveringMap

/-- A version of `IsCoveringMap.existsUnique_continuousMap_lifts` for maps
that are covering on a subset of the codomain.

Let `p` be a covering map on `s`.
Let `f` be a continuous map with a simply connected locally path connected domain
such that all values of `f` belong to `s`.
Given a point `a₀` in the domain of `f` and a lift `e₀` of `f a₀` along `p`,
there exists a unique lift `F` of `f` along `p` such that `F a₀ = e₀`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
