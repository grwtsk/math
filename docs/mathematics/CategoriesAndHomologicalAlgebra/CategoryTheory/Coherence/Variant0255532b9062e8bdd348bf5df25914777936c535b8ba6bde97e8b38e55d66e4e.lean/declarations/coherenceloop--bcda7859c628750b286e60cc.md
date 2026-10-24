# coherenceLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b7136ce39b8a4c7a196c714bc4662dd838263865226c41be85e55d5b22f9ac7",
  "kind": "def",
  "lexical_name": "coherenceLoop",
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
  "slug": "coherenceloop--bcda7859c628750b286e60cc",
  "source": {
    "blob": "bd388436ed2b08577dfef4d4c12056f29d33d254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant0255532b9062e8bdd348bf5df25914777936c535b8ba6bde97e8b38e55d66e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcda7859c628750b286e60cca9addaf78c9b940f809a5353817d060e864251cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant0255532b9062e8bdd348bf5df25914777936c535b8ba6bde97e8b38e55d66e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b7136ce39b8a4c7a196c714bc4662dd838263865226c41be85e55d5b22f9ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def coherenceLoop (maxSteps := 37) : TacticM Unit :=
  match maxSteps with
  | 0 => exception' "`coherence` tactic reached iteration limit"
  | maxSteps' + 1 => do
    -- To prove an equality `f = g` in a monoidal category,
    -- first try the `pure_coherence` tactic on the entire equation:
    evalTactic (← `(tactic| pure_coherence_internal)) <|> do
    -- Otherwise, rearrange so we have a maximal prefix of each side
    -- that is built out of unitors and associators:
    evalTactic (← `(tactic| liftable_prefixes)) <|>
      exception' "Something went wrong in the `coherence` tactic: \
        is the target an equation in a monoidal category?"
    -- The goal should now look like `f₀ ≫ f₁ = g₀ ≫ g₁`,
    liftMetaTactic MVarId.congrCore
    -- and now we have two goals `f₀ = g₀` and `f₁ = g₁`.
    -- Discharge the first using `coherence`,
    evalTactic (← `(tactic| { pure_coherence_internal })) <|>
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
      coherenceLoop maxSteps'

@[deprecated (since := "2026-05-27")] alias coherence_loop := coherenceLoop

open Lean.Parser.Tactic

/--
Simp lemmas for rewriting a hom in monoidal categories into a normal form.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant0255532b9062e8bdd348bf5df25914777936c535b8ba6bde97e8b38e55d66e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant0255532b9062e8bdd348bf5df25914777936c535b8ba6bde97e8b38e55d66e4e.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd388436ed2b08577dfef4d4c12056f29d33d254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
