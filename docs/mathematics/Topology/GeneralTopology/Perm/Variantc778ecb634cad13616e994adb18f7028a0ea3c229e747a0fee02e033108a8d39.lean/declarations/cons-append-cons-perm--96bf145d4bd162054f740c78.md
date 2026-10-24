# cons_append_cons_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59a94253076fafc6c6e005cadd7171fcd02631a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12a42c01-d5f8-b611-9fd8-41f5028e0cc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97f2ae32-422e-9671-b7c5-af1d746bf211",
  "kind": "theorem",
  "lexical_name": "cons_append_cons_perm",
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
  "slug": "cons-append-cons-perm--96bf145d4bd162054f740c78",
  "source": {
    "blob": "59a94253076fafc6c6e005cadd7171fcd02631a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 573,
    "path": "GRWTSK/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96bf145d4bd162054f740c78f7ce3218ae25283a6696bc370adf10a0d93a6f1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97f2ae32-422e-9671-b7c5-af1d746bf211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_append_cons_perm {a b : α} {as bs : List α} :
    a :: as ++ b :: bs ~ b :: as ++ a :: bs := by
  suffices [[a], as, [b], bs].flatten ~ [[b], as, [a], bs].flatten by simpa
  apply Perm.flatten
  calc
    [[a], as, [b], bs] ~ [as, [a], [b], bs] := Perm.swap as [a] _
    _ ~ [as, [b], [a], bs] := Perm.cons _ (Perm.swap [b] [a] _)
    _ ~ [[b], as, [a], bs] := Perm.swap [b] as _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perm/Variantc778ecb634cad13616e994adb18f7028a0ea3c229e747a0fee02e033108a8d39.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a94253076fafc6c6e005cadd7171fcd02631a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
