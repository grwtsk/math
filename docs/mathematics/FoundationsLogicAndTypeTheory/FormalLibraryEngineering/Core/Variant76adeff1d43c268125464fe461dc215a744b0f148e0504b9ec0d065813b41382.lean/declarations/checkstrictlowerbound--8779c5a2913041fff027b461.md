# checkStrictLowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe9b046cc1475af81203f3dcc30a8a14e5d7d9250d7def8bcf3975a95fda5bdf",
  "kind": "def",
  "lexical_name": "checkStrictLowerBound",
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
  "slug": "checkstrictlowerbound--8779c5a2913041fff027b461",
  "source": {
    "blob": "04b82ce9502d0c110ba733da183b6aafc7900224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8779c5a2913041fff027b46150e333e723502ce0ef74bb2d0eef972576d3aa7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe9b046cc1475af81203f3dcc30a8a14e5d7d9250d7def8bcf3975a95fda5bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkStrictLowerBound (e : Expr) (I : IntervalRat) (c : ℚ) (cfg : EvalConfig) : Bool :=
  checkDomainValid1 e I cfg && decide (c < (evalIntervalCore1 e I cfg).lo)

/-! ### Golden Theorems

These theorems convert the boolean `true` from the checkers into semantic proofs
about Real numbers. They are the theorems a tactic will `apply`.
-/

/-- **Golden Theorem for Upper Bounds**

    If `checkUpperBound e I c cfg = true`, then `∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b82ce9502d0c110ba733da183b6aafc7900224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
