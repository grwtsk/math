# LinearIsometryEquiv.reflections_generate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:399702b7-2090-b0ed-9de0-72b360b53afb",
  "kind": "theorem",
  "lexical_name": "LinearIsometryEquiv.reflections_generate",
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
  "slug": "linearisometryequiv-reflections-generate--3b1dfc028e36b8e39c14bc4f",
  "source": {
    "blob": "a3d15476e98dcad6d9a5e976a534bcd0e73a6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b1dfc028e36b8e39c14bc4f547333b71af9c9da610a706ccd35688a9b6dc87b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:399702b7-2090-b0ed-9de0-72b360b53afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIsometryEquiv.reflections_generate [FiniteDimensional ℝ F] :
    Subgroup.closure (Set.range fun v : F => reflection (ℝ ∙ v)ᗮ) = ⊤ := by
  rw [Subgroup.eq_top_iff']
  intro φ
  rcases φ.reflections_generate_dim with ⟨l, _, rfl⟩
  apply (Subgroup.closure _).list_prod_mem
  intro x hx
  rcases List.mem_map.mp hx with ⟨a, _, hax⟩
  exact Subgroup.subset_closure ⟨a, hax⟩

section OrthogonalFamily

open Submodule

variable {ι : Type*}

/-- An orthogonal family of subspaces of `E` satisfies `DirectSum.IsInternal` (that is,
they provide an internal direct sum decomposition of `E`) if and only if their span has trivial
orthogonal complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant29bb42c4485d7b7adb2d55a5d3809adaee1cc3738c7b5510e674ba2ccecd799d.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d15476e98dcad6d9a5e976a534bcd0e73a6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
