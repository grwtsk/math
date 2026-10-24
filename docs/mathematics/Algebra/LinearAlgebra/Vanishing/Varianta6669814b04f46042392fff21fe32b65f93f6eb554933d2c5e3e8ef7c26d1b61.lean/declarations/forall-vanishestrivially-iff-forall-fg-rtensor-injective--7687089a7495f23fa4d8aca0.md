# forall_vanishesTrivially_iff_forall_fg_rTensor_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8897b7be-5ddb-0d32-f94e-4ab9ac7abe55",
  "kind": "theorem",
  "lexical_name": "forall_vanishesTrivially_iff_forall_fg_rTensor_injective",
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
  "slug": "forall-vanishestrivially-iff-forall-fg-rtensor-injective--7687089a7495f23fa4d8aca0",
  "source": {
    "blob": "4cb87c93914e6d089a0557cd5f8ee127dbb22d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 266,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7687089a7495f23fa4d8aca0f4e103f8bf454ada497565afe1423c73e9e54bfa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8897b7be-5ddb-0d32-f94e-4ab9ac7abe55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_vanishesTrivially_iff_forall_fg_rTensor_injective :
    (∀ {l : ℕ} {m : Fin l → M} {n : Fin l → N},
      ∑ i, m i ⊗ₜ n i = (0 : M ⊗[R] N) → VanishesTrivially R m n) ↔
    ∀ (M' : Submodule R M) (_ : M'.FG), Injective (rTensor N M'.subtype) := by
  constructor
  · intro h M' _
    exact rTensor_injective_of_forall_vanishesTrivially R h M'
  · intro h k m n hmn
    exact vanishesTrivially_of_sum_tmul_eq_zero_of_rTensor_injective R
      (h _ (fg_span (Set.finite_range _))) hmn

/-- If the map $M' \otimes N \to M \otimes N$ is injective for every finitely generated submodule
$M' \subseteq M$, then it is in fact injective for every submodule $M' \subseteq M$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Varianta6669814b04f46042392fff21fe32b65f93f6eb554933d2c5e3e8ef7c26d1b61.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb87c93914e6d089a0557cd5f8ee127dbb22d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
