# runThreeWay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d88abb00047dd14663b70035ded5acb4e8a19d1deef74543bd2e57dfde20cc0",
  "kind": "def",
  "lexical_name": "runThreeWay",
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
  "slug": "runthreeway--cd7b4abf12e3611fe271ecc3",
  "source": {
    "blob": "fce90c5ca631b09d837eee4eff699c99f9cea5b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd7b4abf12e3611fe271ecc3f355702e243d9539c8b6977ac140dfa5da78110e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d88abb00047dd14663b70035ded5acb4e8a19d1deef74543bd2e57dfde20cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runThreeWay (name : String) (e : Expr) (I : IntervalRat) : ThreeWayResult :=
  let rat := evalRat e I
  let dyad := evalDyad e I
  let aff := evalAffine e I
  { name := name
    ratWidth := rat.hi - rat.lo
    dyadWidth := dyad.hi - dyad.lo
    affineWidth := aff.hi - aff.lo }

#eval runThreeWay "x - x" exprXMinusX testInterval
#eval runThreeWay "sin(x)" exprSin testInterval
#eval runThreeWay "exp(x)" exprExp smallInterval

/-! ### Soundness Verification -/

-- Verify that Affine results are sound (contain the true value range)
-- For x - x, the true value is always 0, so [0, 0] must be valid

/-- x - x evaluates to exactly 0 for any x -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variantd085c9667e6e84abc56263761faa8395ba7df28baf24816c14b94e50f4154feb.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce90c5ca631b09d837eee4eff699c99f9cea5b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
