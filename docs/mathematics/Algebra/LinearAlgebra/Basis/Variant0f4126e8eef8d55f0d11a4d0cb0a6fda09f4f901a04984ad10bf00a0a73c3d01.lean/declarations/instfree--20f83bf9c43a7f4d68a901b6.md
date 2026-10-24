# instFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4604c68b90c9aa11a88db2d5cbaeacc96c0f5638ad93f42000747226960c5a9d",
  "kind": "instance",
  "lexical_name": "instFree",
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
  "slug": "instfree--20f83bf9c43a7f4d68a901b6",
  "source": {
    "blob": "3f4b83458edb567d7181049875ac11b88843dec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20f83bf9c43a7f4d68a901b67dbb75e71449de8ffc65149249c3f8344ffa5875",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4604c68b90c9aa11a88db2d5cbaeacc96c0f5638ad93f42000747226960c5a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFree [Module.Free R M] : Module.Free R (⋀[R]^n M) := by
  classical
  have ⟨I, b⟩ := Module.Free.exists_basis R M
  let : LinearOrder I := linearOrderOfSTO WellOrderingRel
  exact Module.Free.of_basis (b.exteriorPower n)

section FiniteFree

variable (M) [Module.Free R M] [Module.Finite R M]

/-- If `R` is non-trivial and `M` is finite free of rank `r`, then
the `n`th exterior power of `M` is of finrank `Nat.choose r n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4b83458edb567d7181049875ac11b88843dec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
