# shiftIso_add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c194de9-1625-6532-6276-86b96c515f3d",
  "kind": "lemma",
  "lexical_name": "shiftIso_add'",
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
  "slug": "shiftiso-add--1c7c6557a2b248161fe383f0",
  "source": {
    "blob": "c8240c4ccaf3ed7ac78988a2b46090abe0b696dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c7c6557a2b248161fe383f0a5ef4bef4192f5d267363871937bcabca658c1ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c194de9-1625-6532-6276-86b96c515f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftIso_add' (n m mn : A) (hnm : m + n = mn) (a a' a'' : A)
    (ha' : n + a = a') (ha'' : m + a' = a'') :
    F.shiftIso mn a a'' (by rw [← hnm, ← ha'', ← ha', add_assoc]) =
      isoWhiskerLeft _ (shiftFunctorAdd' D m n mn hnm) ≪≫ (Functor.associator _ _ _).symm ≪≫
        isoWhiskerRight (F.shiftIso m a' a'' ha'') _ ≪≫ F.shiftIso n a a' ha' := by
  subst hnm
  rw [shiftFunctorAdd'_eq_shiftFunctorAdd, shiftIso_add]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant4be394c4928a352afc6009048c32fce51f82c4b83e1f7423a3e3133d1a9869f5.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8240c4ccaf3ed7ac78988a2b46090abe0b696dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
