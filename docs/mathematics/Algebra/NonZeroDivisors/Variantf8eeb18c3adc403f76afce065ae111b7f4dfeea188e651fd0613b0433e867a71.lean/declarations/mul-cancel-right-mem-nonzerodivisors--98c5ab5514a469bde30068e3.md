# mul_cancel_right_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ac7911-53ac-5f78-d418-f550a559cd53",
  "kind": "lemma",
  "lexical_name": "mul_cancel_right_mem_nonZeroDivisors",
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
  "slug": "mul-cancel-right-mem-nonzerodivisors--98c5ab5514a469bde30068e3",
  "source": {
    "blob": "a9f0be16956d34e3cdeeeca513f06e2b9a023408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 29,
    "path": "GRWTSK/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98c5ab5514a469bde30068e381c758b269b7013c608ae3e0e784e33a4c80b225",
  "verification": {
    "reference": "docs/verification/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ac7911-53ac-5f78-d418-f550a559cd53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_cancel_right_mem_nonZeroDivisors (hr : r ∈ R⁰) : x * r = y * r ↔ x = y := by
  refine ⟨fun h ↦ ?_, congrArg (· * r)⟩
  rw [← sub_eq_zero, ← mul_right_mem_nonZeroDivisors_eq_zero_iff hr, sub_mul, h, sub_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonZeroDivisors/Variantf8eeb18c3adc403f76afce065ae111b7f4dfeea188e651fd0613b0433e867a71.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f0be16956d34e3cdeeeca513f06e2b9a023408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
