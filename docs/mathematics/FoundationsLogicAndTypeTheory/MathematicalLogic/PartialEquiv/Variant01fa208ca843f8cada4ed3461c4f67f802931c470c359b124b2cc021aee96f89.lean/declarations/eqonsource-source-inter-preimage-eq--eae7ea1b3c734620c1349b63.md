# EqOnSource.source_inter_preimage_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e99803f897768479fd5c06f5783f664d775ec87d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 724,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01fa208ca843f8cada4ed3461c4f67f802931c470c359b124b2cc021aee96f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25473c42-3eed-7c25-d6d9-23addf047b8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5ff873e-d313-2bcf-8722-9fa61fd2b438",
  "kind": "theorem",
  "lexical_name": "EqOnSource.source_inter_preimage_eq",
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
  "slug": "eqonsource-source-inter-preimage-eq--eae7ea1b3c734620c1349b63",
  "source": {
    "blob": "e99803f897768479fd5c06f5783f664d775ec87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 724,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variant01fa208ca843f8cada4ed3461c4f67f802931c470c359b124b2cc021aee96f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae7ea1b3c734620c1349b6381c919df2d07e91264de0bac5abd02c40c077d2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variant01fa208ca843f8cada4ed3461c4f67f802931c470c359b124b2cc021aee96f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5ff873e-d313-2bcf-8722-9fa61fd2b438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EqOnSource.source_inter_preimage_eq {e e' : PartialEquiv α β} (he : e ≈ e') (s : Set β) :
    e.source ∩ e ⁻¹' s = e'.source ∩ e' ⁻¹' s := by rw [he.eqOn.inter_preimage_eq, source_eq he]

/-- Composition of a partial equivalence and its inverse is equivalent to
the restriction of the identity to the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variant01fa208ca843f8cada4ed3461c4f67f802931c470c359b124b2cc021aee96f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variant01fa208ca843f8cada4ed3461c4f67f802931c470c359b124b2cc021aee96f89.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e99803f897768479fd5c06f5783f664d775ec87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
