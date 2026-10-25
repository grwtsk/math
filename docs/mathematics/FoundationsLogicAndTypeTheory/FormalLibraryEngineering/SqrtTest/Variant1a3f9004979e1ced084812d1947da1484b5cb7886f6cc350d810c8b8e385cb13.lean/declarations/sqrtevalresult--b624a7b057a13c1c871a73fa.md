# sqrtEvalResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef1fdbee39600d798931416a639a0f4150c26f3c2a364875daca516a6d5457ff",
  "kind": "def",
  "lexical_name": "sqrtEvalResult",
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
  "slug": "sqrtevalresult--b624a7b057a13c1c871a73fa",
  "source": {
    "blob": "29c4c00b7ff54a0bebb3655c7df7b3108992797a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variant1a3f9004979e1ced084812d1947da1484b5cb7886f6cc350d810c8b8e385cb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b624a7b057a13c1c871a73faaf155a48396843161ac4893630ab1a2e9fa8c521",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variant1a3f9004979e1ced084812d1947da1484b5cb7886f6cc350d810c8b8e385cb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef1fdbee39600d798931416a639a0f4150c26f3c2a364875daca516a6d5457ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrtEvalResult := evalIntervalDyadic sqrtVarExpr testEnv

-- The result should be a valid interval (lo ≤ hi)
#guard sqrtEvalResult.lo.toRat ≤ sqrtEvalResult.hi.toRat

-- Lower bound should be 0 (conservative)
#guard sqrtEvalResult.lo.toRat = 0

-- Upper bound should be max(4, 1) = 4 (conservative)
#guard sqrtEvalResult.hi.toRat = 4

/-! ## Test 7: Composed expressions with sqrt -/

-- sqrt(x + 1) on [0, 3] should give bounds containing [1, 2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variant1a3f9004979e1ced084812d1947da1484b5cb7886f6cc350d810c8b8e385cb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqrtTest/Variant1a3f9004979e1ced084812d1947da1484b5cb7886f6cc350d810c8b8e385cb13.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c4c00b7ff54a0bebb3655c7df7b3108992797a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
