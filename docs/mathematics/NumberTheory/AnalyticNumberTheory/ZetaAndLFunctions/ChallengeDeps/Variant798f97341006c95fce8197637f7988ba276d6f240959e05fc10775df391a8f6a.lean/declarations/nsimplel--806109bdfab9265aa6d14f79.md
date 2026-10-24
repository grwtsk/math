# NsimpleL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc8a270705be3fb48b937235ef709d4a0cfefd88548bfb4c9431ac0ab756b8cf",
  "kind": "def",
  "lexical_name": "NsimpleL",
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
  "slug": "nsimplel--806109bdfab9265aa6d14f79",
  "source": {
    "blob": "20f80c50149da42247b5a83641be0ff00c3ecd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ChallengeDeps/Variant798f97341006c95fce8197637f7988ba276d6f240959e05fc10775df391a8f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:806109bdfab9265aa6d14f7911c09c34bfb6a919874f9e52d0abb7a367d6cc90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ChallengeDeps/Variant798f97341006c95fce8197637f7988ba276d6f240959e05fc10775df391a8f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc8a270705be3fb48b937235ef709d4a0cfefd88548bfb4c9431ac0ab756b8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NsimpleL (T₁ T₂ : ℝ) : ℕ := (zerosInL χ T₁ T₂ ∩ {ρ | zeroMultL χ ρ = 1}).ncard

end Dirichlet

/-! ## 3. The Montgomery–Taylor constant of Theorem D -/

/-- c₁* := √2·tan ϑ / (1 + ϑ·tan ϑ) at ϑ = 1/√2 — the paper's closed form for the optimal-window
constant c*_λ = √2·tan ϑ/(1 + ϑ·tan ϑ), ϑ = λ/√2, at λ = 1. Numerically c₁* = 0.7532960…
(= 2·tan(1/√2)/(√2 + tan(1/√2)); 1/c₁* = 1/2 + 2^{-1/2}·cot(2^{-1/2}) is the Montgomery–Taylor
constant). Theorem D's three proportions are 2 − 1/c₁* = 0.67250…, 2c₁* − 1 = 0.50659… and
c₁* = 0.75329…; the decimals are NOT part of the formal statements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ChallengeDeps/Variant798f97341006c95fce8197637f7988ba276d6f240959e05fc10775df391a8f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ChallengeDeps/Variant798f97341006c95fce8197637f7988ba276d6f240959e05fc10775df391a8f6a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f80c50149da42247b5a83641be0ff00c3ecd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
