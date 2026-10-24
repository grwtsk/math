# coherence_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0959a3daf736300ee7acf2ac1ac1d6632d62ea7537c8d403a78141567b389e3c",
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
  "slug": "coherence-loop--3256f1561aa03a6ae96a7ebe",
  "source": {
    "blob": "d226a30a2cad4f486c7cbf440647b572cf2e805e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3256f1561aa03a6ae96a7ebe4d0930a6e240c56190cfce061285f59a3549cd9d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0959a3daf736300ee7acf2ac1ac1d6632d62ea7537c8d403a78141567b389e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–364.

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
      exception' ("Something went wrong in the `coherence` tactic: " ++
        "is the target an equation in a monoidal category?")
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

/--
Use the coherence theorem for monoidal categories to solve equations in a monoidal equation,
where the two sides only differ by replacing strings of monoidal structural morphisms
(that is, associators, unitors, and identities)
with different strings of structural morphisms with the same source and target.

That is, `coherence` can handle goals of the form
`a ≫ f ≫ b ≫ g ≫ c = a' ≫ f ≫ b' ≫ g ≫ c'`
where `a = a'`, `b = b'`, and `c = c'` can be proved using `pure_coherence`.

(If you have very large equations on which `coherence` is unexpectedly failing,
you may need to increase the typeclass search depth,
using e.g. `set_option synthInstance.maxSize 500`.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3db0501bb9750adb19d72858dfb0311190e7c9132d7c0e5c82b9a94f19d4639a.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d226a30a2cad4f486c7cbf440647b572cf2e805e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
