# bklnwSumDyadicOpt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:603f14cb5f2187d051121556e14f45702446e7431a94ea164bbb3d9acaa0897b",
  "kind": "def",
  "lexical_name": "bklnwSumDyadicOpt",
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
  "slug": "bklnwsumdyadicopt--b08fdf64c6c145524137ccdd",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b08fdf64c6c145524137ccdd8b1b54df49877804a777c3bc753a4cc1cdbdac2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:603f14cb5f2187d051121556e14f45702446e7431a94ea164bbb3d9acaa0897b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bklnwSumDyadicOpt (x : IntervalDyadic) (limit : Nat) (cfg : BKLNWSumConfig := {})
    (roundEvery : Nat := 8) : IntervalDyadic :=
  if limit < 3 then zeroDyadic
  else
    -- Precompute log(x) once (expensive)
    let logX := logIntervalDyadic x cfg.toDyadicConfig
    -- k=3 term: x^(1/3 - 1/3) = x^0 = 1
    let acc0 := oneDyadic
    -- Continue from k=4
    if limit < 4 then acc0
    else bklnwSumAuxOpt logX 4 limit acc0 cfg roundEvery

/-! ### Certified Cached-Log Sum

This variant precomputes `log(x)` once while preserving the exact rounding
schedule and recursion shape of `bklnwSumDyadic`, making equivalence proofs
straightforward. -/

/-- Cached-log accumulator with the same rounding schedule as `bklnwSumAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
