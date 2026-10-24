# Chain'.length_le_length_destutter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8423e706-7aae-0dd0-ed74-a161646abcc9",
  "kind": "lemma",
  "lexical_name": "Chain'.length_le_length_destutter",
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
  "slug": "chain-length-le-length-destutter--755499431b95b5478fbe94b1",
  "source": {
    "blob": "facaf115db116f3a7685a840ea1d2c4d769dded5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755499431b95b5478fbe94b187fe476d64a4724eb3a3f3e57995b35d6a8e660d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8423e706-7aae-0dd0-ed74-a161646abcc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Chain'.length_le_length_destutter [IsEquiv α Rᶜ] :
    ∀ {l₁ l₂ : List α}, l₁ <+ l₂ → l₁.Chain' R → l₁.length ≤ (l₂.destutter R).length
  -- `l₁ := []`, `l₂ := []`
  | [], [], _, _ => by simp
  -- `l₁ := l₁`, `l₂ := a :: l₂`
  | l₁, _, .cons (l₂ := l₂) a hl, hl₁ =>
    (hl₁.length_le_length_destutter hl).trans length_destutter_le_length_destutter_cons
  -- `l₁ := [a]`, `l₂ := a :: l₂`
  | _, _, .cons₂ (l₁ := []) (l₂ := l₁) a hl, hl₁ => by simp [Nat.one_le_iff_ne_zero]
  -- `l₁ := a :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons₂ a <| .cons (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    by_cases hab : R a b
    · simpa [destutter_cons_cons, hab] using hl₁.tail.length_le_length_destutter (hl.cons _)
    · simpa [destutter_cons_cons, hab] using hl₁.length_le_length_destutter (hl.cons₂ _)
  -- `l₁ := a :: b :: l₁`, `l₂ := a :: b :: l₂`
  | _, _, .cons₂ a <| .cons₂ (l₁ := l₁) (l₂ := l₂) b hl, hl₁ => by
    simpa [destutter_cons_cons, rel_of_chain_cons hl₁]
      using hl₁.tail.length_le_length_destutter (hl.cons₂ _)

/-- `destutter` of `≠` gives a list of maximal length over any chain.

In other words, `l.destutter (· ≠ ·)` is a `≠`-chain sublist of `l`, and is at least as long as any
other `≠`-chain sublist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `facaf115db116f3a7685a840ea1d2c4d769dded5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
