# HasCompactMulSupport.sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bae2dcc6e5b15edc3a81d52f869a25ba57c3dc5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:308d797d-0a7b-823b-7178-5e5ce76901a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c918fbe6-64c6-82f0-094c-878b5c4125e7",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.sup",
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
  "slug": "hascompactmulsupport-sup--1b6364b8493a4a6be57b9a15",
  "source": {
    "blob": "bae2dcc6e5b15edc3a81d52f869a25ba57c3dc5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b6364b8493a4a6be57b9a15588df6b7b4c4cc291c2eab175987c675bf169e5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c918fbe6-64c6-82f0-094c-878b5c4125e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.sup {f g : X → M} (hf : HasCompactMulSupport f)
    (hg : HasCompactMulSupport g) :  HasCompactMulSupport (f ⊔ g) := by
  apply IsCompact.of_isClosed_subset (IsCompact.union hf hg) (isClosed_mulTSupport _)
  rw [mulTSupport, mulTSupport, mulTSupport, ← closure_union]
  apply closure_mono
  exact Function.mulSupport_sup f g

end SemilatticeSup

section SemilatticeInf

variable [SemilatticeInf M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant0d0d65bce2fef08e653758b66429affd9bef49e6919e4b11ac1261875d894e88.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bae2dcc6e5b15edc3a81d52f869a25ba57c3dc5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
