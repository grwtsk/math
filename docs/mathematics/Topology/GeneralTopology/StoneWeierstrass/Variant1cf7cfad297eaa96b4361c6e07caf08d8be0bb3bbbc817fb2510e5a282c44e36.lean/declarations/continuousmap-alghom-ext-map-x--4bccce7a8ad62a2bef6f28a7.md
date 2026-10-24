# ContinuousMap.algHom_ext_map_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f59736c-bc4f-dedb-5823-20da86ac88da",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.algHom_ext_map_X",
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
  "slug": "continuousmap-alghom-ext-map-x--4bccce7a8ad62a2bef6f28a7",
  "source": {
    "blob": "cb7a95dc9e737bf23397389e3299604cea25a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 515,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bccce7a8ad62a2bef6f28a714ae0c34c63f683fcf22c5fcec2dce094c14ffc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f59736c-bc4f-dedb-5823-20da86ac88da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.algHom_ext_map_X {A : Type*} [Semiring A]
    [Algebra ℝ A] [TopologicalSpace A] [T2Space A] {s : Set ℝ} [CompactSpace s]
    {φ ψ : C(s, ℝ) →ₐ[ℝ] A} (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (toContinuousMapOnAlgHom s X) = ψ (toContinuousMapOnAlgHom s X)) : φ = ψ := by
  suffices (⊤ : Subalgebra ℝ C(s, ℝ)) ≤ AlgHom.equalizer φ ψ from
    AlgHom.ext fun x => this (by trivial)
  rw [← polynomialFunctions.topologicalClosure s]
  exact Subalgebra.topologicalClosure_minimal
    (polynomialFunctions.le_equalizer s φ ψ h) (isClosed_eq hφ hψ)

/-- Continuous star algebra homomorphisms from `C(s, 𝕜)` into a star `𝕜`-algebra `A` which agree
at `X : 𝕜[X]` (interpreted as a continuous map) are, in fact, equal. -/
@[ext (iff := false)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7a95dc9e737bf23397389e3299604cea25a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
