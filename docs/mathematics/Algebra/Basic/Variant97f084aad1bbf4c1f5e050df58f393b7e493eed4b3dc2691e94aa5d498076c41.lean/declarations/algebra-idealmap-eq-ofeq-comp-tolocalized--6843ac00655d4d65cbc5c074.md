# Algebra.idealMap_eq_ofEq_comp_toLocalized₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af76a457e6a18ad78b34dcd5faa806a720ada910",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f084aad1bbf4c1f5e050df58f393b7e493eed4b3dc2691e94aa5d498076c41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:558f7cb3-c6ea-f4ea-6f14-9021fe5191f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d2ae4b1-2e9f-cd6b-7f97-551b3e387c1c",
  "kind": "theorem",
  "lexical_name": "Algebra.idealMap_eq_ofEq_comp_toLocalized₀",
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
  "slug": "algebra-idealmap-eq-ofeq-comp-tolocalized--6843ac00655d4d65cbc5c074",
  "source": {
    "blob": "af76a457e6a18ad78b34dcd5faa806a720ada910",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 533,
    "path": "GRWTSK/Algebra/Basic/Variant97f084aad1bbf4c1f5e050df58f393b7e493eed4b3dc2691e94aa5d498076c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6843ac00655d4d65cbc5c0748f1f7fe39455362539b6904a8d5654284ae6324d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant97f084aad1bbf4c1f5e050df58f393b7e493eed4b3dc2691e94aa5d498076c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d2ae4b1-2e9f-cd6b-7f97-551b3e387c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.idealMap_eq_ofEq_comp_toLocalized₀ (I : Ideal R) :
    Algebra.idealMap S I =
      (LinearEquiv.ofEq _ _ <| Ideal.localized₀_eq_restrictScalars_map S p I).toLinearMap ∘ₗ
      Submodule.toLocalized₀ p (Algebra.linearMap R S) I :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant97f084aad1bbf4c1f5e050df58f393b7e493eed4b3dc2691e94aa5d498076c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant97f084aad1bbf4c1f5e050df58f393b7e493eed4b3dc2691e94aa5d498076c41.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af76a457e6a18ad78b34dcd5faa806a720ada910` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
