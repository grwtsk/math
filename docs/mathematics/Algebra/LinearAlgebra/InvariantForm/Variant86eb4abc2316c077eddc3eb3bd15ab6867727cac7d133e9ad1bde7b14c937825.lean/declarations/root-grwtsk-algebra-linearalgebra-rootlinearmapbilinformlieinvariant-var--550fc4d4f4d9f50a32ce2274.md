# _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapBilinFormLieInvariant.Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.LinearMap.BilinForm.lieInvariant_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab31d404-c28e-540a-c06e-b1bb724a8f42",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapBilinFormLieInvariant.Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.LinearMap.BilinForm.lieInvariant_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-rootlinearmapbilinformlieinvariant-var--550fc4d4f4d9f50a32ce2274",
  "source": {
    "blob": "78684342173895cf373a28bd363dbf0de4b154ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant86eb4abc2316c077eddc3eb3bd15ab6867727cac7d133e9ad1bde7b14c937825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:550fc4d4f4d9f50a32ce22742e75628528e2ff6b5f28135c456c0eb9ca0f3faf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantForm/Variant86eb4abc2316c077eddc3eb3bd15ab6867727cac7d133e9ad1bde7b14c937825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab31d404-c28e-540a-c06e-b1bb724a8f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapBilinFormLieInvariant.Variant7fedf773aa21058cbdd01ccf2626905955ba1d90addf4fea178e22022b89542e.LinearMap.BilinForm.lieInvariant_iff [LieAlgebra R L] [LieModule R L M] :
    Φ.lieInvariant L ↔ Φ ∈ LieModule.maxTrivSubmodule R L (LinearMap.BilinForm R M) := by
  refine ⟨fun h x ↦ ?_, fun h x y z ↦ ?_⟩
  · ext y z
    rw [LieHom.lie_apply, LinearMap.sub_apply, Module.Dual.lie_apply, LinearMap.zero_apply,
      LinearMap.zero_apply, h, sub_self]
  · replace h := LinearMap.congr_fun₂ (h x) y z
    simp only [LieHom.lie_apply, LinearMap.sub_apply, Module.Dual.lie_apply,
      LinearMap.zero_apply, sub_eq_zero] at h
    simp [← h]

/--
The orthogonal complement of a Lie submodule `N` with respect to an invariant bilinear form `Φ` is
the Lie submodule of elements `y` such that `Φ x y = 0` for all `x ∈ N`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantForm/Variant86eb4abc2316c077eddc3eb3bd15ab6867727cac7d133e9ad1bde7b14c937825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantForm/Variant86eb4abc2316c077eddc3eb3bd15ab6867727cac7d133e9ad1bde7b14c937825.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78684342173895cf373a28bd363dbf0de4b154ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
