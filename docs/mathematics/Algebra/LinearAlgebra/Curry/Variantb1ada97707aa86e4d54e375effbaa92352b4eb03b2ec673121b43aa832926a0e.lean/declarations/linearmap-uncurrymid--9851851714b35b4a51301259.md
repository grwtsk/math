# LinearMap.uncurryMid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c7b41d1f905279b57e66627c5ff3b9e545973d54bf66704de2f101c50ec98a1",
  "kind": "def",
  "lexical_name": "LinearMap.uncurryMid",
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
  "slug": "linearmap-uncurrymid--9851851714b35b4a51301259",
  "source": {
    "blob": "232382ce9247f711dd0cc7a990c84ac7252b1aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9851851714b35b4a5130125935a18757c7a5783532e0ae75574d7ef51cde10b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c7b41d1f905279b57e66627c5ff3b9e545973d54bf66704de2f101c50ec98a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearMap.uncurryMid (p : Fin (n + 1))
    (f : M p →ₗ[R] MultilinearMap R (fun i ↦ M (p.succAbove i)) M₂) : MultilinearMap R M M₂ :=
  .mk' (fun m ↦ f (m p) (p.removeNth m))
    (fun m i x y ↦ by cases i using Fin.succAboveCases p <;> simp)
    (fun m i x y ↦ by cases i using Fin.succAboveCases p <;> simp)

/-- Interpret a multilinear map in `n + 1` variables
as a linear map in `p`th variable with values in the multilinear maps in the other variables. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232382ce9247f711dd0cc7a990c84ac7252b1aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
