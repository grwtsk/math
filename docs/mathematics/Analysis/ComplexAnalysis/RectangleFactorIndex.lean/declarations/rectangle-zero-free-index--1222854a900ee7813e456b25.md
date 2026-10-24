# Rectangle.zero_free_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd15b890-e69d-e2b5-0696-663fa9e6d46f",
  "kind": "theorem",
  "lexical_name": "Rectangle.zero_free_index",
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
  "slug": "rectangle-zero-free-index--1222854a900ee7813e456b25",
  "source": {
    "blob": "7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 218,
    "path": "GRWTSK/Analysis/Complex/RectangleFactorIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1222854a900ee7813e456b25c1ccf47a9392b264f2d0062b8f33a78b7c4be0d8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd15b890-e69d-e2b5-0696-663fa9e6d46f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rectangle.zero_free_index (D : Rectangle) {q : ℂ → ℂ}
    (hq : ContinuousOn q D.box) (hn : ∀ w ∈ D.box, q w ≠ 0) :
    index (D.image q hq) (D.image_closed q hq) (D.image_nonzero hq hn) = 0 := by
  have hmem (p : I × I) : blend (p.1 : ℝ) (D.curve p.2) D.center ∈ D.box :=
    D.blend_mem_box (D.curve_boundary p.2).1 D.center_mem p.1
  let H : HomotopyWith (D.image q hq) (ContinuousMap.const I (q D.center))
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) :=
    { toFun := fun p => q (blend (p.1 : ℝ) (D.curve p.2) D.center)
      continuous_toFun := hq.comp_continuous (by unfold blend; fun_prop) hmem
      map_zero_left := fun t => by simp [Rectangle.image]
      map_one_left := fun t => by simp
      prop' := fun lam => ⟨by change q _ = q _; rw [D.curve_closed],
        fun t => hn _ (hmem (lam,t))⟩ }
  exact (index_homotopy (D.image_closed q hq) rfl (D.image_nonzero hq hn)
    (fun _ => hn _ D.center_mem) H).trans (index_const _ (hn _ D.center_mem))

end
end GRWTSK.Analysis.Complex.RectangleFactorIndex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangleFactorIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangleFactorIndex.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e5894bbbfa21368c3e02f99e0cde6bc6ff8b862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
