# nontrivialityByAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c9b70fa4729e32b46deabe7c602f5ee5a5c9aa64728b642a7a019ce673655a3",
  "kind": "def",
  "lexical_name": "nontrivialityByAssumption",
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
  "slug": "nontrivialitybyassumption--1d6d93b32447b1aaaff9be98",
  "source": {
    "blob": "b82013ad9f41498e4c6367df285e0951e718fa79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d6d93b32447b1aaaff9be989931703401b4ab6481a6d4b78b20475d6ddd4a6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c9b70fa4729e32b46deabe7c602f5ee5a5c9aa64728b642a7a019ce673655a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def nontrivialityByAssumption (g : MVarId) : MetaM Unit := do
  g.inferInstance <|> do
    _ ← processSyntax {maxDepth := 6}
      false false [← `(nontrivial_of_ne), ← `(nontrivial_of_lt)] [] #[] [g]

/-- Attempts to generate a `Nontrivial α` hypothesis.

The tactic first checks to see that there is not already a `Nontrivial α` instance
before trying to synthesize one using other techniques.

If the goal is an (in)equality, the type `α` is inferred from the goal.
Otherwise, the type needs to be specified in the tactic invocation, as `nontriviality α`.

The `nontriviality` tactic will first look for strict inequalities amongst the hypotheses,
and use these to derive the `Nontrivial` instance directly.

Otherwise, it will perform a case split on `Subsingleton α ∨ Nontrivial α`, and attempt to discharge
the `Subsingleton` goal using `simp [h₁, h₂, ..., hₙ, nontriviality]`, where `[h₁, h₂, ..., hₙ]` is
a list of additional `simp` lemmas that can be passed to `nontriviality` using the syntax
`nontriviality α using h₁, h₂, ..., hₙ`.

```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  assumption
```

```
example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  apply mul_comm
```

```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : (2 : ℕ) ∣ 4 := by
  nontriviality R -- there is now a `Nontrivial R` hypothesis available.
  dec_trivial
```

```
def myeq {α : Type} (a b : α) : Prop := a = b

example {α : Type} (a b : α) (h : a = b) : myeq a b := by
  success_if_fail nontriviality α -- Fails
  nontriviality α using myeq -- There is now a `Nontrivial α` hypothesis available
  assumption
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82013ad9f41498e4c6367df285e0951e718fa79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
