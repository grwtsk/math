# MonoidHom.comp_id_commGrp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5c851e4-573d-0586-5afa-f07bb951b041",
  "kind": "theorem",
  "lexical_name": "MonoidHom.comp_id_commGrp",
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
  "slug": "monoidhom-comp-id-commgrp--fe2120e9b2f0bfdbef2dc784",
  "source": {
    "blob": "859be5c7cb4de14d0494ae55d34b08fc57f0d0b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 634,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe2120e9b2f0bfdbef2dc7846b8e34c85a93a1faa0f00700fcffc342492b7ce2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c851e4-573d-0586-5afa-f07bb951b041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.comp_id_commGrp {G : CommGrp.{u}} {H : Type u} [Monoid H] (f : G →* H) :
    f.comp (CommGrp.Hom.hom (𝟙 G)) = f := by
  simp
@[to_additive (attr := deprecated
  "Proven by `simp only [CommGrp.hom_id, id_comp]`"
  (since := "2025-01-28"))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantde878308a2902eb2323b6527a72190c945a0d4e39a03aa53aec5c804fb88184b.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859be5c7cb4de14d0494ae55d34b08fc57f0d0b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
