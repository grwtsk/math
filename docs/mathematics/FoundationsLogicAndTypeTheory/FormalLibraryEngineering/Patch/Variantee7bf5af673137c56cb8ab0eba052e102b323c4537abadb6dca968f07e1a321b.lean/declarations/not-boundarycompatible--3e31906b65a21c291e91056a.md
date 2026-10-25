# not_boundaryCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91de8e19-bddc-8f01-e039-1a08423fd1f9",
  "kind": "theorem",
  "lexical_name": "not_boundaryCompatible",
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
  "slug": "not-boundarycompatible--3e31906b65a21c291e91056a",
  "source": {
    "blob": "e8dfa82d9fa2f7a127e14a4506f627570f9ec758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantee7bf5af673137c56cb8ab0eba052e102b323c4537abadb6dca968f07e1a321b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e31906b65a21c291e91056a49e0b27bc453247d5350fa17e655ea3d7e4e6e3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantee7bf5af673137c56cb8ab0eba052e102b323c4537abadb6dca968f07e1a321b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91de8e19-bddc-8f01-e039-1a08423fd1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_boundaryCompatible
    {F : Fabric}
    {n : Nat}
    {x : F.Cell n}
    {patch : LocalPatch F x}
    (mismatch : LocalPatch.BoundaryMismatch patch) :
    ¬ patch.BoundaryCompatible := by
  intro h
  apply mismatch.different
  calc
    mismatch.expected = F.contract mismatch.operator.operator x :=
      mismatch.expected_eq
    _ =
        (patch.boundary.replacementContract mismatch.operator).comp
          patch.update :=
      (h mismatch.operator).symm
    _ = mismatch.actual := mismatch.actual_eq.symm

/-- Consequently, a mismatched patch cannot extend to a global reaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantee7bf5af673137c56cb8ab0eba052e102b323c4537abadb6dca968f07e1a321b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantee7bf5af673137c56cb8ab0eba052e102b323c4537abadb6dca968f07e1a321b.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dfa82d9fa2f7a127e14a4506f627570f9ec758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
