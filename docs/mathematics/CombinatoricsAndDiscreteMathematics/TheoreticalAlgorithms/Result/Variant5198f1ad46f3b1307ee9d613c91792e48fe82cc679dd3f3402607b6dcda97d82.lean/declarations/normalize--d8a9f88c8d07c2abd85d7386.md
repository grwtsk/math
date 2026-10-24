# normalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57c6ca71c0efd2e07264aaff3ce71ec78af41c1a968cb77f5d0c5ab766f4f0d8",
  "kind": "def",
  "lexical_name": "normalize",
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
  "slug": "normalize--d8a9f88c8d07c2abd85d7386",
  "source": {
    "blob": "58062479be58deee87882d37bc8f954515bab1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant5198f1ad46f3b1307ee9d613c91792e48fe82cc679dd3f3402607b6dcda97d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8a9f88c8d07c2abd85d73869cdc0b82b4dd1956b539303bb3ad9deeac2ec331",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant5198f1ad46f3b1307ee9d613c91792e48fe82cc679dd3f3402607b6dcda97d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57c6ca71c0efd2e07264aaff3ce71ec78af41c1a968cb77f5d0c5ab766f4f0d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalize (l : AList (fun _ : ℕ => Bool)) :
    (e : IfExpr) → { e' : IfExpr //
        (∀ f, e'.eval f = e.eval (fun w => (l.lookup w).elim (f w) id))
        ∧ e'.normalized
        ∧ ∀ (v : ℕ), v ∈ vars e' → l.lookup v = none }
  | lit b => ⟨lit b, ◾⟩
  | var v =>
    match h : l.lookup v with
    | none => ⟨var v, ◾⟩
    | some b => ⟨lit b, ◾⟩
  | .ite (lit true)   t e => have t' := normalize l t; ⟨t'.1, ◾⟩
  | .ite (lit false)  t e => have e' := normalize l e; ⟨e'.1, ◾⟩
  | .ite (.ite a b c) t e => have i' := normalize l (.ite a (.ite b t e) (.ite c t e)); ⟨i'.1, ◾⟩
  | .ite (var v)      t e =>
    match h : l.lookup v with
    | none =>
      have ⟨t', ht₁, ht₂, ht₃⟩ := normalize (l.insert v true) t
      have ⟨e', he₁, he₂, he₃⟩ := normalize (l.insert v false) e
      ⟨if t' = e' then t' else .ite (var v) t' e', by
        refine ⟨fun f => ?_, ?_, fun w b => ?_⟩
        · -- eval = eval
          simp only [apply_ite, eval_ite_var, ite_eq_iff']
          cases hfv : f v
          · simp_all only [cond_eq_ite, Bool.false_eq_true, ↓reduceIte, imp_and_neg_imp_iff]
            congr
            ext w
            by_cases w = v <;> ◾
          · simp only [ht₁, h, Option.elim_none, cond_eq_ite, ↓reduceIte, imp_and_neg_imp_iff]
            congr
            ext w
            by_cases w = v <;> ◾
        · -- normalized
          have := ht₃ v
          have := he₃ v
          split <;> ◾
        · -- lookup = none
          have := ht₃ w
          have := he₃ w
          by_cases w = v <;> ◾⟩
    | some b =>
      have i' := normalize l (.ite (lit b) t e); ⟨i'.1, ◾⟩
  termination_by e => e.normSize

/-
We recall the statement of the if-normalization problem.

We want a function from if-expressions to if-expressions,
that outputs normalized if-expressions and preserves meaning.
-/
recall IfNormalization :=
  { Z : IfExpr → IfExpr // ∀ e, (Z e).normalized ∧ (Z e).eval = e.eval }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant5198f1ad46f3b1307ee9d613c91792e48fe82cc679dd3f3402607b6dcda97d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Result/Variant5198f1ad46f3b1307ee9d613c91792e48fe82cc679dd3f3402607b6dcda97d82.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58062479be58deee87882d37bc8f954515bab1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
