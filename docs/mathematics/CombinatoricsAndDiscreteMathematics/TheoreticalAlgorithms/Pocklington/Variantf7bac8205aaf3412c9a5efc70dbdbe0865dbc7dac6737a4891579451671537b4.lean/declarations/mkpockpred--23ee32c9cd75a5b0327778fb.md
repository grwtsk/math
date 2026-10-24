# mkPockPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdef8fde60985b45d06cb4c4b83d0f3b5a301f321551acc8ae61ae84104e8d44",
  "kind": "def",
  "lexical_name": "mkPockPred",
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
  "slug": "mkpockpred--23ee32c9cd75a5b0327778fb",
  "source": {
    "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23ee32c9cd75a5b0327778fbdb46a1729260d4aefbca18b904c2e8d3c3812c82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdef8fde60985b45d06cb4c4b83d0f3b5a301f321551acc8ae61ae84104e8d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkPockPred (N a F₁ : Q(Nat)) (steps : Array PrimePow) (dict : PrimeDict) :
    MetaM Q(PocklingtonPred $N $a $F₁) := do
  if h : steps.size = 0 then return mkConst ``PocklingtonPred.one
  else
    have head : Expr := ← match steps[0] with
    | .prime p => do
      mkAppOptM ``PocklingtonPred.base #[N, a, mkNatLit p, ← dict.getM p,
        eagerReflBoolTrue, eagerReflBoolTrue]
    | .pow p e => do
      mkAppOptM ``PocklingtonPred.base_pow #[N, a, mkNatLit p, mkNatLit e, ← dict.getM p,
        eagerReflBoolTrue, eagerReflBoolTrue]
    (steps.drop 1).foldlM (fun ih step ↦ match step with
      | .prime p => do
        mkAppM ``PocklingtonPred.step #[← dict.getM p, ih,
          eagerReflBoolTrue, eagerReflBoolTrue]
      | .pow p e => do
        mkAppOptM ``PocklingtonPred.step_pow #[N, a, none, mkNatLit p, mkNatLit e,
          ← dict.getM p, ih, eagerReflBoolTrue, eagerReflBoolTrue]) head

/-- Syntax for a `pock` certificate step: `(N, root, F₁)`.

- `N`: the number to certify as prime
- `root`: a value satisfying `root ^ (N-1) ≡ 1 (mod N)` and the GCD conditions
- `F₁`: a fully-factored divisor of `N - 1` with `F₁ > √N`, written as `p₁ ^ e₁ * p₂ * ...`

All prime factors appearing in `F₁` must already be in the `PrimeDict` (certified by
earlier `small` or `pock` steps).

```lean
-- In a pock% or prime_cert% call:
pock (339392917, 2, 3 ^ 4 * 29 * 41)
pock (16290860017, 5, 339392917)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1b10936ddf9673d6608c8057531ce7b793927a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
