# compile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d747f5ffc6408331970664781d0a0aa0b16ed21dc19aa81cbcd93961ec3c99a",
  "kind": "def",
  "lexical_name": "compile",
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
  "slug": "compile--b7df03663ee5ba00a6f3b873",
  "source": {
    "blob": "b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7df03663ee5ba00a6f3b87313a8decfca493c0bbfb1e24e839de261bd6675cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d747f5ffc6408331970664781d0a0aa0b16ed21dc19aa81cbcd93961ec3c99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compile (map : Identifier → Register) : Expr → Register → List Instruction
  | Expr.const v, _ => [li v]
  | Expr.var x, _ => [load (loc x map)]
  | Expr.sum s₁ s₂, t => compile map s₁ t ++ [sto t] ++ compile map s₂ (t + 1) ++ [add t]

end Compiler

section Correctness

/-! ### Correctness -/


/-- Machine states ζ₁ and ζ₂ are equal except for the accumulator and registers {x | x ≥ t}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant312c4e5d4d8f8ff7e93b02a7715c95e21e30f487c63f4561beb0c72531f6b9e0.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a1d28fbfd61423b214e68f1ce9cd14cebc2b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
