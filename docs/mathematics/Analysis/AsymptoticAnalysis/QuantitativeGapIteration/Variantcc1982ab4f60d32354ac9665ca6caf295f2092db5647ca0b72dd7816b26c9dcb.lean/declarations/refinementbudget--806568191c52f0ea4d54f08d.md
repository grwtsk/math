# refinementBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d05415fc0d82fec27d91da1010567398fb7f9603272ce2cd0b0d647b55b4376b",
  "kind": "def",
  "lexical_name": "refinementBudget",
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
  "slug": "refinementbudget--806568191c52f0ea4d54f08d",
  "source": {
    "blob": "c6415ce2a2d53996a197cb1779d5657ac2c40d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:806568191c52f0ea4d54f08d49af06229bca5057b410ff2e86bf8649328eae38",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d05415fc0d82fec27d91da1010567398fb7f9603272ce2cd0b0d647b55b4376b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refinementBudget (Δ₀ : ℝ) (c ε : ℕ → ℝ) : ℕ → ℝ
  | 0 => Δ₀
  | n + 1 => c n ^ 2 * refinementBudget Δ₀ c ε n - ε n

/-- Closed finite iteration, including division by the next cumulative loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuantitativeGapIteration/Variantcc1982ab4f60d32354ac9665ca6caf295f2092db5647ca0b72dd7816b26c9dcb.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6415ce2a2d53996a197cb1779d5657ac2c40d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
