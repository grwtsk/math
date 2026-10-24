# instLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba2ffcb2c658716f7b6cff7244bbe3c37f82889cc386319171a4e4dd647db590",
  "kind": "instance",
  "lexical_name": "instLinearOrder",
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
  "slug": "instlinearorder--a1a4b4c54fe7a910e80b775e",
  "source": {
    "blob": "51646e292bf424497c3365eb9c8f5f25fc573081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1a4b4c54fe7a910e80b775e4600486b8e4e5079b358bf3233a1c3e605aa8c7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba2ffcb2c658716f7b6cff7244bbe3c37f82889cc386319171a4e4dd647db590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearOrder (α β : Type*) [LinearOrder α] [LinearOrder β] : LinearOrder (α ×ₗ β) where
  le_total := total_of (Prod.Lex _ _)
  toDecidableLE := Prod.Lex.decidable _ _
  toDecidableLT := Prod.Lex.decidable _ _
  toDecidableEq := instDecidableEqLex _
  compare_eq_compareOfLessAndEq := fun a b => by
    have : DecidableLT (α ×ₗ β) := Prod.Lex.decidable _ _
    have : Std.LawfulBEqOrd (α ×ₗ β) := ⟨by
      simp [compare_def, compareLex, compareOn, Ordering.then_eq_eq]⟩
    have : Std.LawfulLTOrd (α ×ₗ β) := ⟨by
      simp [compare_def, compareLex, compareOn, Ordering.then_eq_lt, toLex_lt_toLex,
        compare_lt_iff_lt]⟩
    convert! Std.LawfulLTCmp.eq_compareOfLessAndEq (cmp := compare) a b

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Varianta72c5a9e2e85c8f9e406a6f36f63924441d83f1f6bbbfb03c465d75daacb5831.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51646e292bf424497c3365eb9c8f5f25fc573081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
