# cannot_cube_a_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1a9f346-5e57-be2b-c09f-9fbe08bb3a65",
  "kind": "theorem",
  "lexical_name": "cannot_cube_a_cube",
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
  "slug": "cannot-cube-a-cube--e42d814bd3f4f035702a1dd5",
  "source": {
    "blob": "1828de22caa9275bc2633f3b26b44e3f11da9a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 578,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e42d814bd3f4f035702a1dd554c0bc6967ac251df14a12b2373b8558b3f7882d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a9f346-5e57-be2b-c09f-9fbe08bb3a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cannot_cube_a_cube :
    ∀ {n : ℕ}, n ≥ 3 →                         -- In ℝ^n for n ≥ 3
    ∀ {s : Set (Cube n)}, s.Finite →           -- given a finite collection of (hyper)cubes
    s.Nontrivial →                             -- containing at least two elements
    s.PairwiseDisjoint Cube.toSet →            -- which is pairwise disjoint
    ⋃ c ∈ s, Cube.toSet c = unitCube.toSet → -- whose union is the unit cube
    InjOn Cube.w s →                           -- such that the widths of all cubes are different
    False := by                                -- then we can derive a contradiction
  intro n hn s hfin h2 hd hU hinj
  cases' n with n
  · cases hn
  exact @not_correct n s (↑) hfin.to_subtype h2.coe_sort
    ⟨hd.subtype _ _, (iUnion_subtype _ _).trans hU, hinj.injective, hn⟩
#align theorems_100.«82».cannot_cube_a_cube Theorems100.«82».cannot_cube_a_cube

end «82»

end

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1828de22caa9275bc2633f3b26b44e3f11da9a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
