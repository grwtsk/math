# reps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cd43cb2ecb5c991c24b3b37e47766779376a2f39ce0343fa22c03e55227ae4c",
  "kind": "def",
  "lexical_name": "reps",
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
  "slug": "reps--11e5b9cbc618f53fb0fca16d",
  "source": {
    "blob": "4e4c109daecc1be7b9449c2925286a1c235bfd40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11e5b9cbc618f53fb0fca16d97963ec464c7fe639bab392fb45f4667d5487d4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cd43cb2ecb5c991c24b3b37e47766779376a2f39ce0343fa22c03e55227ae4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reps (m : ℤ) : Set (Δ m) :=
  {A : Δ m | (A.1 1 0) = 0 ∧ 0 < A.1 0 0 ∧ 0 ≤ A.1 0 1 ∧ |(A.1 0 1)| < |(A.1 1 1)|}

/-- Reduction step for matrices in `Δ m` which moves the matrices towards `reps` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variant740efe3718cb3a95d5db5f250b102bfe43c2fc97a16a515dc38919f8d47ae069.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e4c109daecc1be7b9449c2925286a1c235bfd40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
