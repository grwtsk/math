# IsChain.length_le_length_destutter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a27c8255-fdd9-87fe-4dc0-94e7a2f9ed88",
  "kind": "lemma",
  "lexical_name": "IsChain.length_le_length_destutter",
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
  "slug": "ischain-length-le-length-destutter--7d558583d784d19e37aa4310",
  "source": {
    "blob": "c8382bc9e1a342771e9966f63f5a20223594c77e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant530143414c3d71000c44421fc56b654dc810aacc322b294834ac8976242ac180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d558583d784d19e37aa431094c487e7134c8fa8d13f598386233989fb5ed10a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant530143414c3d71000c44421fc56b654dc810aacc322b294834ac8976242ac180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a27c8255-fdd9-87fe-4dc0-94e7a2f9ed88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsChain.length_le_length_destutter [IsEquiv α Rᶜ] :
    ∀ {l₁ l₂ : List α}, l₁ <+ l₂ → l₁.IsChain R → l₁.length ≤ (l₂.destutter R).length
  -- `l₁ := []`, `l₂ := []`
  | [], [], _, _ => by simp
  -- `l₁ := l₁`, `l₂ := a :: l₂`
  | l₁, _, .cons (l₂ := l₂) a hl, hl₁ =>
    (hl₁.length_le_length_destutter hl).trans length_destutter_le_length_destutter_cons
  -- `l₁ := [a]`, `l₂ := a :: l₂`
  | _, _, .cons_cons (l₁ := []) (l₂ := l₁) a hl, hl₁ => by simp [Nat.one_le_iff_ne_zero]
  -- `l₁ := a :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons_cons a <| .cons (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    by_cases hab : R a b
    · simpa [destutter_cons_cons, hab] using! hl₁.tail.length_le_length_destutter (hl.cons _)
    · simpa [destutter_cons_cons, hab] using! hl₁.length_le_length_destutter (hl.cons_cons _)
  -- `l₁ := a :: b :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons_cons a <| .cons_cons (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    simpa [destutter_cons_cons, rel_of_isChain_cons_cons hl₁]
      using! hl₁.tail.length_le_length_destutter (hl.cons_cons _)

/-- `destutter` of `≠` gives a list of maximal length over any chain.

In other words, `l.destutter (· ≠ ·)` is a `≠`-chain sublist of `l`, and is at least as long as any
other `≠`-chain sublist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant530143414c3d71000c44421fc56b654dc810aacc322b294834ac8976242ac180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant530143414c3d71000c44421fc56b654dc810aacc322b294834ac8976242ac180.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8382bc9e1a342771e9966f63f5a20223594c77e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
