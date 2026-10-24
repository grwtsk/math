# trichotomous_lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7c64be33d47229552bbbc1a33e65fa744544e4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/115500105b3b79499f50c1d1b4e2f827eb5832d6360dff39ed19d02b54173b1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95623db0-a503-16d3-322f-fb274e4e5406",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38394741-96ee-b680-a97e-0588dc8601e2",
  "kind": "theorem",
  "lexical_name": "trichotomous_lex",
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
  "slug": "trichotomous-lex--a5393261cfe1f0a767b60eda",
  "source": {
    "blob": "b7c64be33d47229552bbbc1a33e65fa744544e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant115500105b3b79499f50c1d1b4e2f827eb5832d6360dff39ed19d02b54173b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5393261cfe1f0a767b60eda63372027666572f1cc5231ae806449c1b7fcc6c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant115500105b3b79499f50c1d1b4e2f827eb5832d6360dff39ed19d02b54173b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38394741-96ee-b680-a97e-0588dc8601e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trichotomous_lex [∀ i, Std.Trichotomous (α := β i) s] [wf : WellFounded r] :
    Std.Trichotomous (Pi.Lex r @s) :=
  { trichotomous a b hab hba := by
      by_contra! h
      rw [Function.ne_iff] at h
      let i := wf.min {i | a i ≠ b i} h
      have hri j (hr : r j i) : a j = b j := not_not.mp (fun h => wf.not_lt_min _ (by grind) hr)
      have := Std.Trichotomous.trichotomous (a i) (b i) (hab ⟨i, hri, ·⟩)
      exact hba ⟨i, (hri · · |>.symm), Not.imp_symm this <| wf.min_mem {i | a i ≠ b i} h⟩ }

/-
These instances are leaky, because they define the relation on `∀ i, β i` instead of
`Lex (∀ i, β i)`/`Colex (∀ i, β i)`. So, we would like to mark them `@[semireducible]`.
But the linter doesn't allow this, so we wrap them in `id` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant115500105b3b79499f50c1d1b4e2f827eb5832d6360dff39ed19d02b54173b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PiLex/Variant115500105b3b79499f50c1d1b4e2f827eb5832d6360dff39ed19d02b54173b1d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7c64be33d47229552bbbc1a33e65fa744544e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
