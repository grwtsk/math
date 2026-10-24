# finitenessRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0db793b022fba0a0a7aae6fd57577b7bafebcbcc54e37522c4800d78cc228876",
  "kind": "def",
  "lexical_name": "finitenessRelation",
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
  "slug": "finitenessrelation--3f125839e9a7dbdd9d4a295d",
  "source": {
    "blob": "b3210bc02d20d31d80f7c04af8dca1a398f61ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f125839e9a7dbdd9d4a295d516ec423f9cb85b365b7cb828c916094f87285a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0db793b022fba0a0a7aae6fd57577b7bafebcbcc54e37522c4800d78cc228876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def finitenessRelation :
    Std.Iterators.FinitenessRelation (ForwardSliceSearcher s) Id where
  Rel := InvImage WellFoundedRelation.rel (fun it => it.internalState)
  wf := InvImage.wf _ WellFoundedRelation.wf
  subrelation {it it'} h := by
    simp_wf
    obtain ⟨step, h, h'⟩ := h
    cases step
    all_goals try
      cases h
      revert h'
      simp only [Std.IterM.IsPlausibleStep, Std.Iterator.IsPlausibleStep, instIteratorIdSearchStep] -- TODO
      match it.internalState with
      | .emptyBefore pos =>
        rintro (⟨h, h'⟩|h') <;> simp [h', ForwardSliceSearcher.toOption, Option.lt, Prod.lex_def]
      | .emptyAt pos h =>
        simp only [forall_exists_index, and_imp]
        intro x hx h
        simpa [h, ForwardSliceSearcher.toOption, Option.lt, Prod.lex_def,
          ← Pos.lt_iff_remainingBytes_lt]
      | .proper needle table ht stackPos needlePos hn =>
        rintro (⟨newStackPos, newNeedlePos, h₁, h₂, (h|⟨rfl, h⟩)⟩|h)
        · simp [h₂, ForwardSliceSearcher.toOption, Option.lt, Prod.lex_def, h]
        · simpa [h₂, ForwardSliceSearcher.toOption, Option.lt, Prod.lex_def, Pos.Raw.lt_iff]
        · simp [h, ForwardSliceSearcher.toOption, Option.lt]
      | .atEnd .. => simp
    · cases h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3210bc02d20d31d80f7c04af8dca1a398f61ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
