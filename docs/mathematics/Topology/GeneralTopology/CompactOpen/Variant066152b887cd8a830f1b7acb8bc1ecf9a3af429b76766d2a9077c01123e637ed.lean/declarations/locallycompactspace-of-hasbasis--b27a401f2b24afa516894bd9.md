# locallyCompactSpace_of_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f629c8a-158d-d3af-0c29-44b4ac8b4521",
  "kind": "theorem",
  "lexical_name": "locallyCompactSpace_of_hasBasis",
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
  "slug": "locallycompactspace-of-hasbasis--b27a401f2b24afa516894bd9",
  "source": {
    "blob": "0b7449391bbab1cb50ca2bf2e15646e034ac7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b27a401f2b24afa516894bd9fb5e908e1ddf1cafe496fb62806630881a9a8d85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f629c8a-158d-d3af-0c29-44b4ac8b4521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyCompactSpace_of_hasBasis (V : ℕ → Set Y)
    (hV : ∀ {n x}, x ∈ V n → x * x ∈ V n → x ∈ V (n + 1))
    (hVo : Filter.HasBasis (nhds 1) (fun _ ↦ True) V) :
    LocallyCompactSpace (ContinuousMonoidHom X Y) := by
  obtain ⟨U0, hU0c, hU0o⟩ := exists_compact_mem_nhds (1 : X)
  let U_aux : ℕ → {S : Set X | S ∈ nhds 1} :=
    Nat.rec ⟨U0, hU0o⟩ <| fun _ S ↦ let h := exists_closed_nhds_one_inv_eq_mul_subset S.2
      ⟨Classical.choose h, (Classical.choose_spec h).1⟩
  let U : ℕ → Set X := fun n ↦ (U_aux n).1
  have hU1 : ∀ n, U n ∈ nhds 1 := fun n ↦ (U_aux n).2
  have hU2 : ∀ n, U (n + 1) * U (n + 1) ⊆ U n :=
    fun n ↦ (Classical.choose_spec (exists_closed_nhds_one_inv_eq_mul_subset (U_aux n).2)).2.2.2
  have hU3 : ∀ n, U (n + 1) ⊆ U n :=
    fun n x hx ↦ hU2 n (mul_one x ▸ Set.mul_mem_mul hx (mem_of_mem_nhds (hU1 (n + 1))))
  have hU4 : ∀ f : X →* Y, Set.MapsTo f (U 0) (V 0) → ∀ n, Set.MapsTo f (U n) (V n) := by
    intro f hf n
    induction n with
    | zero => exact hf
    | succ n ih =>
      exact fun x hx ↦ hV (ih (hU3 n hx)) (map_mul f x x ▸ ih (hU2 n (Set.mul_mem_mul hx hx)))
  apply locallyCompactSpace_of_equicontinuousAt (U 0) (V 0) hU0c (hVo.mem_of_mem trivial)
  rw [hVo.uniformity_of_nhds_one.equicontinuousAt_iff_right]
  refine fun n _ ↦ Filter.eventually_iff_exists_mem.mpr ⟨U n, hU1 n, fun x hx ⟨f, hf⟩ ↦ ?_⟩
  rw [Set.mem_ofPred_eq, map_one, div_one]
  exact hU4 f hf n hx

end LocallyCompact

end ContinuousMonoidHom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant066152b887cd8a830f1b7acb8bc1ecf9a3af429b76766d2a9077c01123e637ed.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7449391bbab1cb50ca2bf2e15646e034ac7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
