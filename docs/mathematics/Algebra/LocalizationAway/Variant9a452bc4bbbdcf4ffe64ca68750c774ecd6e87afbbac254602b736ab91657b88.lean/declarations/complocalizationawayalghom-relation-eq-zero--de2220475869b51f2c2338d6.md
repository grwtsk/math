# compLocalizationAwayAlgHom_relation_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbf69828-c677-128d-ed5c-f810ebd9c3ae",
  "kind": "lemma",
  "lexical_name": "compLocalizationAwayAlgHom_relation_eq_zero",
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
  "slug": "complocalizationawayalghom-relation-eq-zero--de2220475869b51f2c2338d6",
  "source": {
    "blob": "9527e45d304d6446d9758a632b57332ed10216b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de2220475869b51f2c2338d69b707e40c82a84afd91fa3a1179d72a362ceb2ea",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbf69828-c677-128d-ed5c-f810ebd9c3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compLocalizationAwayAlgHom_relation_eq_zero :
    compLocalizationAwayAlgHom T g P (rename Sum.inr (P.σ g) * X (Sum.inl ()) - 1) = 0 := by
  rw [map_sub, map_one, map_mul, ← toComp_toAlgHom (Generators.localizationAway g (S := T)) P]
  show (compLocalizationAwayAlgHom T g P) (((localizationAway g).toComp P).toAlgHom _) * _ - _ = _
  rw [compLocalizationAwayAlgHom_toAlgHom_toComp, compLocalizationAwayAlgHom_X_inl,
    IsScalarTower.algebraMap_apply P.Ring (P.Ring ⧸ P.ker ^ 2) (Localization.Away _)]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9527e45d304d6446d9758a632b57332ed10216b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
