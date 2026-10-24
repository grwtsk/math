# _root_.ContinuousWithinAt.compCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f37c4f0d-60bb-6234-668d-bb06f45107f4",
  "kind": "lemma",
  "lexical_name": "_root_.ContinuousWithinAt.compCM",
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
  "slug": "root-continuouswithinat-compcm--f160c26b34cf3aa0b5b4966d",
  "source": {
    "blob": "9be918d937c5a280589eccddca836f3ccb3fa86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f160c26b34cf3aa0b5b4966d436ac02258548d728c3bcbda80acc6ebe7298167",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f37c4f0d-60bb-6234-668d-bb06f45107f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma _root_.ContinuousWithinAt.compCM (hg : ContinuousWithinAt g s a)
    (hf : ContinuousWithinAt f s a) : ContinuousWithinAt (fun x ↦ (g x).comp (f x)) s a :=
  hg.compCM hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantf11b62472243855d41f408dfa1660a113c984b8a5c615f770264d35ae8fa4516.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be918d937c5a280589eccddca836f3ccb3fa86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
