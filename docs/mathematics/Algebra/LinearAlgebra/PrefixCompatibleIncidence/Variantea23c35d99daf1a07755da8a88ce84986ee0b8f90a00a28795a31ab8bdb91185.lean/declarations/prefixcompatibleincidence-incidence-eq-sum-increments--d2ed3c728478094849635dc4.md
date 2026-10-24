# PrefixCompatibleIncidence.incidence_eq_sum_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04f108942317692ada1ef09e9e4f2d6ce84b3d09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5076fbc6-bfa8-dc6e-ee07-f35e67facec5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:679f3cbc-0031-77d1-583e-e9da56dfac98",
  "kind": "theorem",
  "lexical_name": "PrefixCompatibleIncidence.incidence_eq_sum_increments",
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
  "slug": "prefixcompatibleincidence-incidence-eq-sum-increments--d2ed3c728478094849635dc4",
  "source": {
    "blob": "04f108942317692ada1ef09e9e4f2d6ce84b3d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2ed3c728478094849635dc4aad5ea7818099faff805bb80f11f6df271ffda78",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679f3cbc-0031-77d1-583e-e9da56dfac98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrefixCompatibleIncidence.incidence_eq_sum_increments
    {RightSpace LeftSpace : Type*}
    [NormedAddCommGroup RightSpace] [NormedSpace ℂ RightSpace]
    [NormedAddCommGroup LeftSpace] [NormedSpace ℂ LeftSpace]
    (family : PrefixCompatibleIncidence RightSpace LeftSpace) (x : ℕ) :
    family.incidence x =
      ∑ n ∈ Finset.range x, family.increment (n + 1) := by
  induction x with
  | zero => simpa using family.zero
  | succ x ih =>
      rw [family.succ, ih]
      simp only [Finset.sum_range_succ]

/-- A matrix-valued residual filtration with its exact one-moment leakage
increments.  The structure says how the residual is constructed over the
prefix order; it says nothing about its size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrefixCompatibleIncidence/Variantea23c35d99daf1a07755da8a88ce84986ee0b8f90a00a28795a31ab8bdb91185.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f108942317692ada1ef09e9e4f2d6ce84b3d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
