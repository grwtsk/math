# tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "897991b81612fe5160e77ada50437b1ce9cf6309",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a034ef8a-c612-8d4b-282f-e0a07eaa3eee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46b03ff9-7b89-19b8-740c-7705f69a336c",
  "kind": "theorem",
  "lexical_name": "tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero",
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
  "slug": "tendsto-log-nhdswithin-im-nonneg-of-re-neg-of-im-zero--ad2545050539d1342eb99cca",
  "source": {
    "blob": "897991b81612fe5160e77ada50437b1ce9cf6309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad2545050539d1342eb99cca401fd6980bc6cefa2d9e31a4299ca2bf1e82666c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b03ff9-7b89-19b8-740c-7705f69a336c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_log_nhdsWithin_im_nonneg_of_re_neg_of_im_zero {z : ℂ} (hre : z.re < 0)
    (him : z.im = 0) : Tendsto log (𝓝[{ z : ℂ | 0 ≤ z.im }] z) (𝓝 <| Real.log ‖z‖ + π * I) := by
  simpa only [log, arg_eq_pi_iff.2 ⟨hre, him⟩] using
    (continuousWithinAt_log_of_re_neg_of_im_zero hre him).tendsto

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variant9be9a6113a70c4f5267be8d527476e027d23c48675147b762ab91c09e43d6cc8.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `897991b81612fe5160e77ada50437b1ce9cf6309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
