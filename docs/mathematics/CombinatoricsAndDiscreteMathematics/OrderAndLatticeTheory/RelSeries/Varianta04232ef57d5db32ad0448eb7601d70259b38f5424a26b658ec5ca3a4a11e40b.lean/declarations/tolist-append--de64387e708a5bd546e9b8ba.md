# toList_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f9ef46-a2c7-07ec-f157-24b59bb3094b",
  "kind": "lemma",
  "lexical_name": "toList_append",
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
  "slug": "tolist-append--de64387e708a5bd546e9b8ba",
  "source": {
    "blob": "766905e9c25872c7575ec76e032d3f80cac3bb0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 359,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de64387e708a5bd546e9b8ba2a1cdcb692f9db430e3ef6117d7e14d723f45a6e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f9ef46-a2c7-07ec-f157-24b59bb3094b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toList_append (p q : RelSeries r) (connect : r p.last q.head) :
    (p.append q connect).toList = p.toList ++ q.toList := by
  apply List.ext_getElem
  · simp
    omega
  · intro i h1 h2
    have h3' : i < p.length + 1 + (q.length + 1) := by simp_all
    rw [toList_getElem_eq_apply_of_lt_length (by simp; omega)]
    · simp only [append, Function.comp_apply, Fin.cast_mk, List.getElem_append]
      split
      · have : Fin.mk i h3' = Fin.castAdd _ ⟨i, by simp_all⟩ := rfl
        rw [this, Fin.append_left, toList_getElem_eq_apply_of_lt_length]
      · simp_all only [length_toList, append_length, List.length_append]
        have : Fin.mk i h3' = Fin.natAdd _ ⟨i - p.length - 1, by omega⟩ := by simp_all; omega
        rw [this, Fin.append_right, toList_getElem_eq_apply_of_lt_length]
        rfl

/--
For two types `α, β` and relation on them `r, s`, if `f : α → β` preserves relation `r`, then an
`r`-series can be pushed out to an `s`-series by
`a₀ -r→ a₁ -r→ ... -r→ aₙ ↦ f a₀ -s→ f a₁ -s→ ... -s→ f aₙ`
-/
@[simps length]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Varianta04232ef57d5db32ad0448eb7601d70259b38f5424a26b658ec5ca3a4a11e40b.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766905e9c25872c7575ec76e032d3f80cac3bb0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
