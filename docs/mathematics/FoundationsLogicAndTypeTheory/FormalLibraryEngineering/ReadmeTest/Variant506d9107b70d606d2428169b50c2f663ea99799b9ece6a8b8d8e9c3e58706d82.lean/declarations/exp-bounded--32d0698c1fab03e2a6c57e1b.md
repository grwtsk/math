# exp_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6db462d-d5d0-d250-8daa-b30df71bfe30",
  "kind": "theorem",
  "lexical_name": "exp_bounded",
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
  "slug": "exp-bounded--32d0698c1fab03e2a6c57e1b",
  "source": {
    "blob": "e6c0dbbb968a5c71aab98cf7f3ff9df9bb7fcb51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variant506d9107b70d606d2428169b50c2f663ea99799b9ece6a8b8d8e9c3e58706d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32d0698c1fab03e2a6c57e1b81a67f46b2eb7db71c2703533fbf2ac0bac40695",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variant506d9107b70d606d2428169b50c2f663ea99799b9ece6a8b8d8e9c3e58706d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6db462d-d5d0-d250-8daa-b30df71bfe30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_bounded : ∀ x ∈ I01', Expr.eval (fun _ => x) exprExp ≤ (3 : ℚ) :=
  verify_upper_bound exprExp exprExp_core I01' 3 { taylorDepth := 10 } (by native_decide)

-- ============================================================================
-- Section: Discovery Commands (README lines 78-86)
-- ============================================================================

-- Find global minimum (interactive command - just test it compiles)
#minimize (fun x => x^2 + Real.sin x) on [-2, 2]

-- Explore function behavior (interactive command)
#explore (Expr.cos (Expr.var 0)) on [0, 4]

-- ============================================================================
-- Section: Neural Network (README lines 198-211)
-- ============================================================================

open LeanCert.ML

-- Define a 2-layer network
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variant506d9107b70d606d2428169b50c2f663ea99799b9ece6a8b8d8e9c3e58706d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadmeTest/Variant506d9107b70d606d2428169b50c2f663ea99799b9ece6a8b8d8e9c3e58706d82.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c0dbbb968a5c71aab98cf7f3ff9df9bb7fcb51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
