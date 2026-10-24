# of_basis_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e586b80-2578-c30e-c250-420e6d1c0bba",
  "kind": "theorem",
  "lexical_name": "of_basis_left",
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
  "slug": "of-basis-left--cfc1161e970cf8042b4b96c6",
  "source": {
    "blob": "d436ab5ff8b485fdba8a25614cfebb3fd76b78c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 346,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc1161e970cf8042b4b96c69694f94a2335322594abe16d877e67110cae6899",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e586b80-2578-c30e-c250-420e6d1c0bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_basis_left {ι : Type*} (m : Basis ι R M)
    (H : LinearMap.ker (mulLeftMap N m) = ⊥) : M.LinearDisjoint N := by
  -- need this instance otherwise `LinearMap.ker_eq_bot` does not work
  letI : AddCommGroup (ι →₀ N) := Finsupp.instAddCommGroup
  exact of_basis_left' M N m (LinearMap.ker_eq_bot.1 H)

variable {M N} in
/-- If `M` and `N` are linearly disjoint, if `M` is a flat `R`-module, then for any family of
`R`-linearly independent elements `{ n_i }` of `N`, they are also `M`-linearly independent,
in the sense that the `R`-linear map from `ι →₀ M` to `S` which maps `{ m_i }`
to the sum of `m_i * n_i` (`Submodule.mulRightMap M n`) has trivial kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d436ab5ff8b485fdba8a25614cfebb3fd76b78c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
