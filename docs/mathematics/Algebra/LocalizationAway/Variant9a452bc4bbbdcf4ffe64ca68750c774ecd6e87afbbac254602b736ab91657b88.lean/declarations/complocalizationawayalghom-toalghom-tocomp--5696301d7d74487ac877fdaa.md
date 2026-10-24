# compLocalizationAwayAlgHom_toAlgHom_toComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f196b870-7205-22fe-6f4f-e3e6e7d9f4da",
  "kind": "lemma",
  "lexical_name": "compLocalizationAwayAlgHom_toAlgHom_toComp",
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
  "slug": "complocalizationawayalghom-toalghom-tocomp--5696301d7d74487ac877fdaa",
  "source": {
    "blob": "9527e45d304d6446d9758a632b57332ed10216b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5696301d7d74487ac877fdaad4c7911ccd5125aaec0c99a5c2ea3c139c2a5a18",
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

Occurrence: `result:f196b870-7205-22fe-6f4f-e3e6e7d9f4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compLocalizationAwayAlgHom_toAlgHom_toComp (x : P.Ring) :
    compLocalizationAwayAlgHom T g P (((localizationAway g (S := T)).toComp P).toAlgHom x) =
      algebraMap P.Ring _ x := by
  simp only [toComp_toAlgHom, Ideal.mem_comap, RingHom.mem_ker, compLocalizationAwayAlgHom, comp,
    localizationAway, AlgHom.toRingHom_eq_coe, aeval_rename,
    Sum.elim_comp_inr, ← IsScalarTower.toAlgHom_apply (R := R), ← comp_aeval_apply,
    aeval_X_left_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationAway/Variant9a452bc4bbbdcf4ffe64ca68750c774ecd6e87afbbac254602b736ab91657b88.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9527e45d304d6446d9758a632b57332ed10216b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
