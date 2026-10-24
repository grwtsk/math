# strongConvexOn_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4089722-32a2-0008-1acb-eeb7378e387e",
  "kind": "lemma",
  "lexical_name": "strongConvexOn_zero",
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
  "slug": "strongconvexon-zero--1e64e69ac2e76fb2eb07da0f",
  "source": {
    "blob": "965a38fe12fafc139712e88ad866679bd16eb605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 142,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e64e69ac2e76fb2eb07da0fd9ecdaf1e8ac976b2061ebbf48fd332e606c5bea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4089722-32a2-0008-1acb-eeb7378e387e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma strongConvexOn_zero : StrongConvexOn s 0 f ↔ ConvexOn ℝ s f := by
  simp [StrongConvexOn, ← Pi.zero_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strong/Variant34ad1013898eac00a15b58c97b012a6aad9fd045a15b7db6ea6908adba7bda32.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965a38fe12fafc139712e88ad866679bd16eb605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
