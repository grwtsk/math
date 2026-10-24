# euclidean_norm_restrict_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dacf450e-caf3-7522-896d-e82dcf523c69",
  "kind": "theorem",
  "lexical_name": "euclidean_norm_restrict_le",
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
  "slug": "euclidean-norm-restrict-le--499bf15bdef19acd693174a5",
  "source": {
    "blob": "3c86340ab97b0cc5400acc579cb4a95626c1c877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 54,
    "path": "GRWTSK/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499bf15bdef19acd693174a500243048638505b466598a56efe40ef7435e676e",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dacf450e-caf3-7522-896d-e82dcf523c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem euclidean_norm_restrict_le (c : Fin k → Fin n) (hc : Function.Injective c)
    (x : EuclideanSpace ℝ (Fin n)) :
    ‖WithLp.toLp 2 (fun i => x (c i))‖ ≤ ‖x‖ := by
  classical
  apply (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  change (∑ i : Fin k, ‖x (c i)‖ ^ 2) ≤ ∑ j : Fin n, ‖x j‖ ^ 2
  calc
    _ = ∑ j ∈ Finset.univ.image c, ‖x j‖ ^ 2 :=
      (Finset.sum_image (f := fun j : Fin n => ‖x j‖ ^ 2)
        (s := Finset.univ) (g := c) hc.injOn).symm
    _ ≤ ∑ j : Fin n, ‖x j‖ ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _) (fun _ _ _ => sq_nonneg _)

/-- Column restriction is bounded by the full frame's Euclidean operator norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorRound4Source/Variantee82e9b4824a53b81332d19c82089ac8bcb6e752fba70337c8f254cf6aa6ddc9.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c86340ab97b0cc5400acc579cb4a95626c1c877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
