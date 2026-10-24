# abs_lt_abs_of_orderTop_ofLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c06556a-baea-df3e-36d3-430a7ad07d97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c47fcf6-53c1-24ab-9de1-1045539d8e0d",
  "kind": "theorem",
  "lexical_name": "abs_lt_abs_of_orderTop_ofLex",
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
  "slug": "abs-lt-abs-of-ordertop-oflex--22e29480a3abfff3492ab985",
  "source": {
    "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22e29480a3abfff3492ab9852a24deab52b55db08a96f0360b75e0340011a283",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c47fcf6-53c1-24ab-9de1-1045539d8e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_lt_abs_of_orderTop_ofLex {x y : Lex R⟦Γ⟧}
    (h : (ofLex y).orderTop < (ofLex x).orderTop) : |x| < |y| := by
  rw [← orderTop_abs x, ← orderTop_abs y] at h
  refine (lt_iff _ _).mpr ⟨(ofLex |y|).orderTop.untop h.ne_top, ?_, ?_⟩
  · simp +contextual [-orderTop_abs, coeff_eq_zero_of_lt_orderTop, h.trans']
  · simpa [-orderTop_abs, coeff_eq_zero_of_lt_orderTop, coeff_untop_eq_leadingCoeff, h]
      using h.ne_top

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29497fcfe9ef246a578469ce198fd554552f1947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
