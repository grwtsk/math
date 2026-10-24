# mul_left_mem_nonZeroDivisors_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30a0b41b5e2f0b9b830b986b96af3425179f3638",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a53af01-8464-634d-6a75-c9bca4fe09d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f3f33e2-b5f4-2278-c66b-6c32945b413f",
  "kind": "lemma",
  "lexical_name": "mul_left_mem_nonZeroDivisors_eq_zero_iff",
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
  "slug": "mul-left-mem-nonzerodivisors-eq-zero-iff--549c7a15ef3df41ffbedf385",
  "source": {
    "blob": "30a0b41b5e2f0b9b830b986b96af3425179f3638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 316,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:549c7a15ef3df41ffbedf3856b32a154a0019350ad8e1484beb3d823632b288d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f3f33e2-b5f4-2278-c66b-6c32945b413f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_left_mem_nonZeroDivisors_eq_zero_iff (hr : r ∈ M₀⁰) : r * x = 0 ↔ x = 0 := by
  rw [mul_comm, mul_right_mem_nonZeroDivisors_eq_zero_iff hr]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Variantb557c69de6713196064ba70fda163af6ef5c7f18600bfa9a9a868225dce88940.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30a0b41b5e2f0b9b830b986b96af3425179f3638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
