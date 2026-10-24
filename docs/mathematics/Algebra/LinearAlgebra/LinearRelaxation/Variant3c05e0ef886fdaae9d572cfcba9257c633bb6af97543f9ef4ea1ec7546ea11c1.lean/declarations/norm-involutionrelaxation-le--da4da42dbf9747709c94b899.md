# norm_involutionRelaxation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d035c5b8aff4629e939c73c649ec64a4b817cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:973c7d3d-561c-4028-c7d6-84dd75fd4984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa97fa62-67a2-6c71-c24a-e8da6c85f997",
  "kind": "theorem",
  "lexical_name": "norm_involutionRelaxation_le",
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
  "slug": "norm-involutionrelaxation-le--da4da42dbf9747709c94b899",
  "source": {
    "blob": "b4d035c5b8aff4629e939c73c649ec64a4b817cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 208,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4da42dbf9747709c94b899edaa7b87e91077140f51000ef635e536e2107ae3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa97fa62-67a2-6c71-c24a-e8da6c85f997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_involutionRelaxation_le
    (parameter : RelaxationParameter)
    (C : Signal →ₗ[ℝ] Signal)
    (isometry : ∀ x, ‖C x‖ = ‖x‖)
    (x : Signal) :
    ‖involutionRelaxation parameter.value C x‖ ≤ ‖x‖ := by
  have hcomplement : 0 ≤ 1 - parameter.value :=
    parameter.one_sub_nonnegative
  calc
    ‖involutionRelaxation parameter.value C x‖ =
        ‖(1 - parameter.value) • x + parameter.value • C x‖ := by
      rfl
    _ ≤ ‖(1 - parameter.value) • x‖ +
        ‖parameter.value • C x‖ := norm_add_le _ _
    _ = |1 - parameter.value| * ‖x‖ +
        |parameter.value| * ‖C x‖ := by
      simp only [norm_smul, Real.norm_eq_abs]
    _ = (1 - parameter.value) * ‖x‖ +
        parameter.value * ‖x‖ := by
      rw [isometry, abs_of_nonneg hcomplement,
        abs_of_nonneg parameter.nonnegative]
    _ = ‖x‖ := by ring

/--
For a strictly interior coefficient, every nonzero anti-invariant component
is contracted strictly.  The conclusion is deliberately restricted to the
anti-invariant component; it is not a global strict-contraction claim.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d035c5b8aff4629e939c73c649ec64a4b817cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
