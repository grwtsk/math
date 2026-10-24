# coherence_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bef841fb8c08e985af3b2e5cb87822a9b04e0436bfa7d56b7b0c2998bf78cca",
  "kind": "def",
  "lexical_name": "coherence_loop",
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
  "slug": "coherence-loop--9cc23f5a4ff543769acab0a3",
  "source": {
    "blob": "e03028734814d5909f0c4a02d78d72461a21f25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cc23f5a4ff543769acab0a33651969b0d7c7c5f183551d1fb88fd13fe1dc782",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bef841fb8c08e985af3b2e5cb87822a9b04e0436bfa7d56b7b0c2998bf78cca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coherence_loop (maxSteps := 37) : TacticM Unit :=
  match maxSteps with
  | 0 => exception' "`coherence` tactic reached iteration limit"
  | maxSteps' + 1 => do
    -- To prove an equality `f = g` in a monoidal category,
    -- first try the `pure_coherence` tactic on the entire equation:
    evalTactic (← `(tactic| pure_coherence)) <|> do
    -- Otherwise, rearrange so we have a maximal prefix of each side
    -- that is built out of unitors and associators:
    evalTactic (← `(tactic| liftable_prefixes)) <|>
      exception' "Something went wrong in the `coherence` tactic: \
        is the target an equation in a monoidal category?"
    -- The goal should now look like `f₀ ≫ f₁ = g₀ ≫ g₁`,
    liftMetaTactic MVarId.congrCore
    -- and now we have two goals `f₀ = g₀` and `f₁ = g₁`.
    -- Discharge the first using `coherence`,
    evalTactic (← `(tactic| { pure_coherence })) <|>
      exception' "`coherence` tactic failed, subgoal not true in the free monoidal category"
    -- Then check that either `g₀` is identically `g₁`,
    evalTactic (← `(tactic| rfl)) <|> do
      -- or that both are compositions,
      liftMetaTactic' insertTrailingIds
      liftMetaTactic MVarId.congrCore
      -- with identical first terms,
      evalTactic (← `(tactic| rfl)) <|>
        exception' "`coherence` tactic failed, non-structural morphisms don't match"
      -- and whose second terms can be identified by recursively called `coherence`.
      coherence_loop maxSteps'

open Lean.Parser.Tactic

/--
Simp lemmas for rewriting a hom in monoical categories into a normal form.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03028734814d5909f0c4a02d78d72461a21f25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
