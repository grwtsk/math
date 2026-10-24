# ιMulti_span_fixedDegree_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ac4c6a-8382-6851-e27f-8299126381e2",
  "kind": "lemma",
  "lexical_name": "ιMulti_span_fixedDegree_of_span_eq_top",
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
  "slug": "multi-span-fixeddegree-of-span-eq-top--fe89d35dcc6f4a7957fb0546",
  "source": {
    "blob": "e803813de5a155b9f552dfc03699fe1d2804e777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe89d35dcc6f4a7957fb054638865fdcd4c751cc64428c2d117adc3a73a378e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ac4c6a-8382-6851-e27f-8299126381e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_span_fixedDegree_of_span_eq_top {s : Set M} (hs : span R s = ⊤) :
    span R (ExteriorAlgebra.ιMulti R n '' {a | range a ⊆ s}) = ⋀[R]^n M := by
  apply le_antisymm
  · rw [span_le]
    rintro - ⟨y, ⟨y_mem, rfl⟩⟩
    apply ExteriorAlgebra.ιMulti_range R n
    simp
  · rw [ExteriorAlgebra.exteriorPower, LinearMap.range_eq_map, ← hs, map_span, span_pow, span_le]
    rintro x hx
    obtain ⟨f, rfl⟩ := Set.mem_pow.mp hx
    refine mem_span_of_mem ⟨ExteriorAlgebra.ιInv ∘ Subtype.val ∘ f, ?_, ?_⟩
    · rw [Set.mem_ofPred_eq, Set.range_comp, Set.image_subset_iff]
      apply Subset.trans ?_ (s.image_subset_preimage_of_inverse ExteriorAlgebra.ι_leftInverse)
      grind
    · rw [ExteriorAlgebra.ιMulti_apply]
      apply congrArg (List.prod ∘ List.ofFn)
      ext i
      obtain ⟨m, -, hm⟩ := (Set.mem_image _ _ _).mp (f i).2
      rw [Function.comp_apply, Function.comp_apply, ← hm, ExteriorAlgebra.ι_leftInverse]

/-- The image of `exteriorPower.ιMulti` spans `⋀[R]^n M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e803813de5a155b9f552dfc03699fe1d2804e777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
