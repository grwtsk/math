# infEdist_closure_pos_iff_notMem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "650276b2d3fe6b9c2dd842477c22371b9e585bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4492dffa-830c-f9af-5482-7f6c4d20acc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:418c8700-198d-7b6b-1600-304fa12be3b9",
  "kind": "theorem",
  "lexical_name": "infEdist_closure_pos_iff_notMem_closure",
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
  "slug": "infedist-closure-pos-iff-notmem-closure--37cbd5ba5eb10853fd49c522",
  "source": {
    "blob": "650276b2d3fe6b9c2dd842477c22371b9e585bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 174,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37cbd5ba5eb10853fd49c522bb813bf9599d3ea3698d36e283b1afccc89765ea",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:418c8700-198d-7b6b-1600-304fa12be3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infEdist_closure_pos_iff_notMem_closure {x : α} {E : Set α} :
    0 < infEdist x (closure E) ↔ x ∉ closure E := by
  rw [infEdist_closure, infEdist_pos_iff_notMem_closure]

@[deprecated (since := "2025-05-23")]
alias infEdist_closure_pos_iff_not_mem_closure := infEdist_closure_pos_iff_notMem_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650276b2d3fe6b9c2dd842477c22371b9e585bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
