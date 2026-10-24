# ιMulti_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:315b9729-29ab-a0dd-6116-6d1d2eae4b5a",
  "kind": "lemma",
  "lexical_name": "ιMulti_range",
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
  "slug": "multi-range--4cd9f2bb87fc4f40e2a1e2d5",
  "source": {
    "blob": "8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 323,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd9f2bb87fc4f40e2a1e2d533f7edaf57e6787956d4d93304110f2a0ca74148",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:315b9729-29ab-a0dd-6116-6d1d2eae4b5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_range (n : ℕ) :
    Set.range (ιMulti R n (M := M)) ⊆ ↑(⋀[R]^n M) := by
  rw [Set.range_subset_iff]
  intro v
  rw [ιMulti_apply]
  apply Submodule.pow_subset_pow
  rw [Set.mem_pow]
  exact ⟨fun i => ⟨ι R (v i), LinearMap.mem_range_self _ _⟩, rfl⟩

/-- The image of `ExteriorAlgebra.ιMulti R n` spans the `n`th exterior power, as a submodule
of the exterior algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
