# checkNoRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76bf5137f6a6bde101d9cced3ebb8377f7e5ea0667b9cd2b38a0bd9d19e4cdb9",
  "kind": "def",
  "lexical_name": "checkNoRoot",
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
  "slug": "checknoroot--e8de32bdf6a781acd69b1786",
  "source": {
    "blob": "315d17660f460f5b4b197971d55addc12669fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8de32bdf6a781acd69b17868090c30f675244cdbeee569158c03e5cbb92de06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76bf5137f6a6bde101d9cced3ebb8377f7e5ea0667b9cd2b38a0bd9d19e4cdb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkNoRoot (e : Expr) (I : IntervalRat) (cfg : EvalConfig) : Bool :=
  checkDomainValid1 e I cfg && (let fI := evalIntervalCore1 e I cfg; fI.hi < 0 || 0 < fI.lo)

/-! ### Computable Newton Step for Unique Root Verification -/

/-- Computable Newton step using `evalIntervalCore1` and `derivIntervalCore`.

    This is the computable equivalent of `newtonStepSimple`. It performs one
    interval Newton iteration: N(I) = c - f(c)/f'(I) where c = midpoint(I).

    Returns `none` if the derivative interval contains 0 (can't safely divide).
    Returns `some (I ∩ N)` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d17660f460f5b4b197971d55addc12669fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
