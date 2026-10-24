# ι_sq_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6957a071316db5dec80d3139f58003ae0570c79c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58016dbd-1f6d-663e-096b-0bbf18b86c58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5aa56d57-efba-b98b-bcf2-4eb3ed4297ba",
  "kind": "theorem",
  "lexical_name": "ι_sq_scalar",
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
  "slug": "sq-scalar--c2a43e6d9dfc9383a253a72f",
  "source": {
    "blob": "6957a071316db5dec80d3139f58003ae0570c79c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a43e6d9dfc9383a253a72f32e1707107fcb9d22aa5ed0e1a8636b0b093bd3d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa56d57-efba-b98b-bcf2-4eb3ed4297ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_sq_scalar (m : M) : ι Q m * ι Q m = algebraMap R _ (Q m) := by
  erw [← AlgHom.map_mul, RingQuot.mkAlgHom_rel R (Rel.of m), AlgHom.commutes]
  rfl
#align clifford_algebra.ι_sq_scalar CliffordAlgebra.ι_sq_scalar

variable {Q} {A : Type*} [Semiring A] [Algebra R A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6957a071316db5dec80d3139f58003ae0570c79c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
