# card_filter_univ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccc7f2bd-ade9-a1e7-b58d-40e52cee65f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4422334-3904-654f-75bb-926ffc06b977",
  "kind": "theorem",
  "lexical_name": "card_filter_univ_succ",
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
  "slug": "card-filter-univ-succ--2c661c31fdb66be2d5501839",
  "source": {
    "blob": "7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c661c31fdb66be2d55018396ad8ac76de01aa462c8ad461765faa77ae3dafa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4422334-3904-654f-75bb-926ffc06b977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_filter_univ_succ (p : Fin (n + 1) → Prop) [DecidablePred p] :
    #{x | p x} = if p 0 then #{x | p (.succ x)} + 1 else #{x | p (.succ x)} := by
  rw [Fin.univ_succ, filter_cons, apply_ite Finset.card, card_cons, filter_map, card_map]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
