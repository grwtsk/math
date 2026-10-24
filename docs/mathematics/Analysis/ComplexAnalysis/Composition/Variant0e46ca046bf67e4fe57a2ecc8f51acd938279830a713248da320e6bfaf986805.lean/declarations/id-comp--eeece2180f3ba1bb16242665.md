# id_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba21b23a-f30f-3baf-2f86-443f5298126c",
  "kind": "theorem",
  "lexical_name": "id_comp",
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
  "slug": "id-comp--eeece2180f3ba1bb16242665",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 401,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeece2180f3ba1bb16242665928af78461f2a94b022cf845f7a3eed4de884c79",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba21b23a-f30f-3baf-2f86-443f5298126c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem id_comp (p : FormalMultilinearSeries 𝕜 E F) (v0 : Fin 0 → E) :
    (id 𝕜 F (p 0 v0)).comp p = p := by
  ext1 n
  obtain rfl | n_pos := n.eq_zero_or_pos
  · ext v
    simp only [comp_coeff_zero', id_apply_zero]
    congr with i
    exact i.elim0
  · dsimp [FormalMultilinearSeries.comp]
    rw [Finset.sum_eq_single (Composition.single n n_pos)]
    · show compAlongComposition (id 𝕜 F (p 0 v0)) p (Composition.single n n_pos) = p n
      ext v
      rw [compAlongComposition_apply, id_apply_one' _ _ _ (Composition.single_length n_pos)]
      dsimp [applyComposition]
      refine p.congr rfl fun i him hin => congr_arg v <| ?_
      ext; simp
    · show
      ∀ b : Composition n, b ∈ Finset.univ → b ≠ Composition.single n n_pos →
        compAlongComposition (id 𝕜 F (p 0 v0)) p b = 0
      intro b _ hb
      have A : 1 < b.length := by
        have : b.length ≠ 1 := by simpa [Composition.eq_single_iff_length] using hb
        have : 0 < b.length := Composition.length_pos_of_pos b n_pos
        omega
      ext v
      rw [compAlongComposition_apply, id_apply_of_one_lt _ _ _ A,
        ContinuousMultilinearMap.zero_apply, ContinuousMultilinearMap.zero_apply]
    · simp

/-- Variant of `id_comp` in which the zero coefficient is given by an equality hypothesis instead
of a definitional equality. Useful for rewriting or simplifying out in some situations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
