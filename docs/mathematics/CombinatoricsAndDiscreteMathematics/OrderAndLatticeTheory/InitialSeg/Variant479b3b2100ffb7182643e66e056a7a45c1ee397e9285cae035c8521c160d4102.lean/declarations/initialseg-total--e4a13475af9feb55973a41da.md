# InitialSeg.total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed734916875c4de6de70fed7ecbc58beb5f012fe1f612a4f6506186a1511f25f",
  "kind": "def",
  "lexical_name": "InitialSeg.total",
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
  "slug": "initialseg-total--e4a13475af9feb55973a41da",
  "source": {
    "blob": "f8cf0f393416c64b8d513ff270f7363c755b6e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 549,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4a13475af9feb55973a41dabee316a5bbd6cbccb2af950e1a2aa8905fb43a62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed734916875c4de6de70fed7ecbc58beb5f012fe1f612a4f6506186a1511f25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def InitialSeg.total (r s) [IsWellOrder α r] [IsWellOrder β s] :
    (r ≼i s) ⊕ (s ≼i r) :=
  match (leAdd r s).principalSumRelIso,
    (RelEmbedding.sumLexInr r s).collapse.principalSumRelIso with
  | Sum.inl f, Sum.inr g => Sum.inl <| f.transRelIso g.symm
  | Sum.inr f, Sum.inl g => Sum.inr <| g.transRelIso f.symm
  | Sum.inr f, Sum.inr g => Sum.inl <| (f.trans g.symm).toInitialSeg
  | Sum.inl f, Sum.inl g => Classical.choice <| by
      obtain h | h | h := trichotomous_of (Sum.Lex r s) f.top g.top
      · exact ⟨Sum.inl <| (f.codRestrict {x | Sum.Lex r s x g.top}
          (fun a => _root_.trans (f.lt_top a) h) h).transRelIso g.subrelIso⟩
      · let f := f.subrelIso
        rw [h] at f
        exact ⟨Sum.inl <| (f.symm.trans g.subrelIso).toInitialSeg⟩
      · exact ⟨Sum.inr <| (g.codRestrict {x | Sum.Lex r s x f.top}
          (fun a => _root_.trans (g.lt_top a) h) h).transRelIso f.subrelIso⟩

/-- For any two well orders, one is a principal segment of the other, or they are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cf0f393416c64b8d513ff270f7363c755b6e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
