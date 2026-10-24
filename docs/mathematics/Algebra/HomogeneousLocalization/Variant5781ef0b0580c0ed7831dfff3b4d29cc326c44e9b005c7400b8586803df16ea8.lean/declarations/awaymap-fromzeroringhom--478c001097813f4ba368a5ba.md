# awayMap_fromZeroRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 846,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8febd89d-089a-ea11-3e4c-2cb6010e964a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af65734e-4842-3502-eca2-33d1734ec60d",
  "kind": "lemma",
  "lexical_name": "awayMap_fromZeroRingHom",
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
  "slug": "awaymap-fromzeroringhom--478c001097813f4ba368a5ba",
  "source": {
    "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 846,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:478c001097813f4ba368a5baf2b6fb5188a18571664b5e68ca6f8d457a1ec816",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af65734e-4842-3502-eca2-33d1734ec60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma awayMap_fromZeroRingHom (a) :
    awayMap 𝒜 hg hx (fromZeroRingHom 𝒜 _ a) = fromZeroRingHom 𝒜 _ a := by
  ext
  simp only [fromZeroRingHom, val_awayMap]
  convert! IsLocalization.lift_eq _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc718214a8af38f308ad3cc88e05103e43b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
