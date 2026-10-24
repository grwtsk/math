# embDomainOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f8f7345615cbd66e91bc3a753629f1758bf7b43c3da828ee8516c01cc348d3d",
  "kind": "def",
  "lexical_name": "embDomainOrderEmbedding",
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
  "slug": "embdomainorderembedding--9354487517cdd9128714ea34",
  "source": {
    "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 391,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9354487517cdd9128714ea34d950c3f3b640526b37c67ec64079f0d0afeae230",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f8f7345615cbd66e91bc3a753629f1758bf7b43c3da828ee8516c01cc348d3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def embDomainOrderEmbedding [Zero R] : Lex R⟦Γ⟧ ↪o Lex R⟦Γ'⟧ where
  toFun a := toLex (embDomain f (ofLex a))
  inj' := toLex.injective.comp (embDomain_injective.comp (ofLex.injective))
  map_rel_iff' {a b} := by
    simp_rw [le_iff_lt_or_eq, lt_iff]
    simp only [Function.Embedding.coeFn_mk, ofLex_toLex, EmbeddingLike.apply_eq_iff_eq]
    constructor
    · rintro (⟨i, hj, hi⟩ | heq)
      · have himem : i ∈ Set.range f := by
          contrapose hi
          simp [embDomain_of_notMem_range hi]
        obtain ⟨k, rfl⟩ := himem
        refine Or.inl ⟨k, fun j hjk ↦ ?_, by simpa using hi⟩
        simpa using hj (f j) (f.lt_iff_lt.mpr hjk)
      · exact Or.inr <| embDomain_injective.comp (ofLex.injective) heq
    · rintro (⟨i, hj, hi⟩ | rfl)
      · refine Or.inl ⟨f i, fun k hki ↦ ?_, by simpa using hi⟩
        by_cases hkmem : k ∈ Set.range f
        · obtain ⟨j', rfl⟩ := hkmem
          simpa using hj _ <| f.lt_iff_lt.mp hki
        · simp_rw [embDomain_of_notMem_range hkmem]
      · simp

/-- `HahnSeries.embDomain` as an `OrderAddMonoidHom`. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29497fcfe9ef246a578469ce198fd554552f1947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
