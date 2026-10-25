# checkGlobalBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44dd2c97e44f4e9a61dcaa1795b596187f774b287a49c0bc33ef907ffc39845a",
  "kind": "def",
  "lexical_name": "checkGlobalBounds",
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
  "slug": "checkglobalbounds--0be25ef592a9578109afc70a",
  "source": {
    "blob": "5a5bc8e864e9fac79885b6f8a049ffebf9fc92f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0be25ef592a9578109afc70a26187833e7ddb8c6a1b316c31699233021ee1a14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44dd2c97e44f4e9a61dcaa1795b596187f774b287a49c0bc33ef907ffc39845a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkGlobalBounds (e : Expr) (B : Box) (lo hi : ℚ) (cfg : GlobalOptConfig) : Bool :=
  checkGlobalLowerBound e B lo cfg && checkGlobalUpperBound e B hi cfg

/-! ### Golden Theorems for Global Optimization -/

/-- **Golden Theorem for Global Lower Bounds**

    If `checkGlobalLowerBound e B c cfg = true`, then `∀ ρ ∈ B, c ≤ Expr.eval ρ e`.

    This converts the boolean certificate into a semantic proof about all points
    in the box.

    Note: This uses ExprSupported (no log) which guarantees domain validity automatically.
    For expressions with log, use the Core version with explicit domain validity proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5bc8e864e9fac79885b6f8a049ffebf9fc92f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
