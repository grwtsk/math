# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:506df6c818cf3606711251aaa0c7cbefbc821d27e2e2f51c98322fdab3f799f8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ca3c3eb614b99a28954fa55d",
  "source": {
    "blob": "36478d4039716d97e5176274c36b4c62e3870268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 656,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3c3eb614b99a28954fa55db9afafd2287338b403b0788b55627e976faf0b4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:506df6c818cf3606711251aaa0c7cbefbc821d27e2e2f51c98322fdab3f799f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsSemiprimaryRing R where
  isSemisimpleRing :=
    IsArtinianRing.isSemisimpleRing_iff_jacobson.mpr (Ring.jacobson_quotient_jacobson R)
  isNilpotent := by
    let Jac := Ring.jacobson R
    have ⟨n, hn⟩ := IsArtinian.monotone_stabilizes ⟨(Jac ^ ·), @Ideal.pow_le_pow_right _ _ _⟩
    have hn : Jac * Jac ^ n = Jac ^ n := by
      rw [← Ideal.IsTwoSided.pow_succ]; exact (hn _ n.le_succ).symm
    use n; by_contra ne
    have ⟨N, ⟨eq, ne⟩, min⟩ := wellFounded_lt.has_min {N | Jac * N = N ∧ N ≠ ⊥} ⟨_, hn, ne⟩
    have : Jac ^ n * N = N := n.rec (by rw [Jac.pow_zero, N.one_mul])
      fun n hn ↦ by rwa [Jac.pow_succ, mul_assoc, eq]
    let I x := Submodule.map (LinearMap.toSpanSingleton R R x) (Jac ^ n)
    have hI x : I x ≤ Ideal.span {x} := by
      rw [Ideal.span, LinearMap.span_singleton_eq_range]; exact LinearMap.map_le_range
    have ⟨x, hx⟩ : ∃ x ∈ N, I x ≠ ⊥ := by
      contrapose! ne
      rw [← this, ← le_bot_iff, Ideal.mul_le]
      refine fun ri hi rn hn ↦ ?_
      rw [← ne rn hn]
      exact ⟨ri, hi, rfl⟩
    rw [← Ideal.span_singleton_le_iff_mem] at hx
    have : I x = N := by
      refine ((hI x).trans hx.1).eq_of_not_lt (min _ ⟨?_, hx.2⟩)
      rw [← smul_eq_mul, ← Submodule.map_smul'', smul_eq_mul, hn]
    have : Ideal.span {x} = N := le_antisymm hx.1 (this.symm.trans_le <| hI x)
    refine (this ▸ ne) ((Submodule.fg_span <| Set.finite_singleton x).eq_bot_of_le_jacobson_smul ?_)
    rw [← Ideal.span, this, smul_eq_mul, eq]

end Ring

end IsArtinianRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36478d4039716d97e5176274c36b4c62e3870268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
