# Monic.C_dvd_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "405b21b67fb07863f9d0a0922c45ab6176336b4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c48227e-33f9-8a1d-6955-d11fe58ceb9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:181416fa-f164-11f1-ee32-37ee34c7cb9c",
  "kind": "lemma",
  "lexical_name": "Monic.C_dvd_iff_isUnit",
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
  "slug": "monic-c-dvd-iff-isunit--9d68c3c99bde69882edf231f",
  "source": {
    "blob": "405b21b67fb07863f9d0a0922c45ab6176336b4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 75,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d68c3c99bde69882edf231fee46a7920d64d3c30ab36f79a0d8f2f5992b5b9a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181416fa-f164-11f1-ee32-37ee34c7cb9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monic.C_dvd_iff_isUnit {a : R} : C a ∣ p ↔ IsUnit a where
  mp h := isUnit_iff_dvd_one.mpr <| hp.coeff_natDegree ▸ (C_dvd_iff_dvd_coeff _ _).mp h p.natDegree
  mpr ha := (ha.map C).dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Units/Variant521a5f6bfef1e79de2907ec6a04777ad5b6ad43b0e1b4b6717ec2f78a0029196.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405b21b67fb07863f9d0a0922c45ab6176336b4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
