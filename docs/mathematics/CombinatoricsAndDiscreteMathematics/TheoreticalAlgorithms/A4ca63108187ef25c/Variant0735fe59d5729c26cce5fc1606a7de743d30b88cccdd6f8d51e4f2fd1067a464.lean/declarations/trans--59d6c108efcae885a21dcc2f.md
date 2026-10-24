# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65562fff8af1403959c4c45d962d48e8708bc5efc217c0bd1b317620d003f778",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--59d6c108efcae885a21dcc2f",
  "source": {
    "blob": "0ccf8eb7521e129f5abdfe9abe82c517028855c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A4ca63108187ef25c/Variant0735fe59d5729c26cce5fc1606a7de743d30b88cccdd6f8d51e4f2fd1067a464.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59d6c108efcae885a21dcc2ffa3d263237e68f4be66864d689e8b160f2a3a5d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A4ca63108187ef25c/Variant0735fe59d5729c26cce5fc1606a7de743d30b88cccdd6f8d51e4f2fd1067a464.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65562fff8af1403959c4c45d962d48e8708bc5efc217c0bd1b317620d003f778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trans
    (first : StructuralIso left middle)
    (second : StructuralIso middle right) :
    StructuralIso left right :=
  ⟨first.1.trans second.1, by
    refine ⟨?_, ?_, ?_⟩
    · intro element
      exact (first.2.1 element).trans (second.2.1 (first element))
    · intro element
      exact (first.2.2.1 element).trans (second.2.2.1 (first element))
    · intro authority relation arguments
      exact
        (first.2.2.2 authority relation arguments).trans
          (second.2.2.2 authority relation
            (fun index ↦ first (arguments index)))⟩

end StructuralIso

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A4ca63108187ef25c/Variant0735fe59d5729c26cce5fc1606a7de743d30b88cccdd6f8d51e4f2fd1067a464.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A4ca63108187ef25c/Variant0735fe59d5729c26cce5fc1606a7de743d30b88cccdd6f8d51e4f2fd1067a464.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccf8eb7521e129f5abdfe9abe82c517028855c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
