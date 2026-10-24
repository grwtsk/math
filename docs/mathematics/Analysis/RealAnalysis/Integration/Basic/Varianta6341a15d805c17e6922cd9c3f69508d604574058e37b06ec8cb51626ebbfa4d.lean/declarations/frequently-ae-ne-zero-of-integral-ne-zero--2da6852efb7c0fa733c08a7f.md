# frequently_ae_ne_zero_of_integral_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35729853-ef6f-b4d6-0bfb-c262571d2883",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:162529d2-e559-ac63-7df9-f7f9cef4e2a6",
  "kind": "theorem",
  "lexical_name": "frequently_ae_ne_zero_of_integral_ne_zero",
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
  "slug": "frequently-ae-ne-zero-of-integral-ne-zero--2da6852efb7c0fa733c08a7f",
  "source": {
    "blob": "5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 352,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da6852efb7c0fa733c08a7f65a763c1dbb5c07e5d74aa02ac75285068525ae7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:162529d2-e559-ac63-7df9-f7f9cef4e2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_ae_ne_zero_of_integral_ne_zero {f : α → G}
    (h : ∫ a, f a ∂μ ≠ 0) : ∃ᶠ a in ae μ, f a ≠ 0 :=
  fun h' ↦ h (integral_eq_zero_of_ae (h'.mono fun _ ↦ not_not.mp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5abe07ae60e8bdfe5d99a7e68c681a5b052ef4f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
