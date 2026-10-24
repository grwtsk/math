# ιMulti_family_span_fixedDegree_of_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d91379d8-61e1-ea66-0bd4-9a53d7e3e2b7",
  "kind": "lemma",
  "lexical_name": "ιMulti_family_span_fixedDegree_of_span",
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
  "slug": "multi-family-span-fixeddegree-of-span--9d536e97a25e889ddee62feb",
  "source": {
    "blob": "e803813de5a155b9f552dfc03699fe1d2804e777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 383,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d536e97a25e889ddee62feb8e68b102a2c040325df5b53724a9eaf853583b18",
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

Occurrence: `result:d91379d8-61e1-ea66-0bd4-9a53d7e3e2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_family_span_fixedDegree_of_span {I : Type*} [LinearOrder I] {v : I → M}
    (hv : Submodule.span R (Set.range v) = ⊤) :
    Submodule.span R (Set.range (ExteriorAlgebra.ιMulti_family R n v)) = ⋀[R]^n M := by
  apply le_antisymm
  · rw [Submodule.span_le, Set.range_subset_iff]
    intro
    rw [SetLike.mem_coe, ιMulti_family_eq_coe_comp, comp_apply]
    exact Submodule.coe_mem _
  · rw [← ιMulti_span_fixedDegree_of_span_eq_top R n M hv, Submodule.span_le]
    rintro - ⟨f, ⟨f_range, rfl⟩⟩
    rw [Set.mem_ofPred] at f_range
    obtain ⟨α, rfl⟩ := Set.range_subset_range_iff_exists_comp.mp f_range
    exact ιMulti_family_span_fixedDegree_aux R v α

/-- If a family of vectors spans `M`, then the family of its `n`-fold exterior products spans
`⋀[R]^n M`. This is a variant of `ιMulti_family_span_fixedDegree_of_span` where we
work in the exterior power and not the exterior algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante9f46121222c1b29af5ba3ec6c22018ef7c9de8173fcd8962272132d6f977d28.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e803813de5a155b9f552dfc03699fe1d2804e777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
