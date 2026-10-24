# IsoCat.isIso_functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3258bf665c63510aecf843a5c19ab96fb78c2952924acfaeb514f8504bfbf08",
  "kind": "instance",
  "lexical_name": "IsoCat.isIso_functor",
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
  "slug": "isocat-isiso-functor--a3471d26c1163d03cba62728",
  "source": {
    "blob": "8c4839a5c5f8813e3490845a4b89a413b6332103",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3471d26c1163d03cba627283eaccf9ab2ed120cef7898b313b59ef984237593",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3258bf665c63510aecf843a5c19ab96fb78c2952924acfaeb514f8504bfbf08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsoCat.isIso_functor (e : IsoCat C D) : e.functor.IsIso where
  faithful := e.toEquivalence.faithful_functor
  full := e.toEquivalence.full_functor
  bijective_obj := Function.bijective_iff_has_inverse.mpr
    ⟨e.inverse.obj, fun X => (Functor.congr_obj e.unit_eq X).symm,
      Functor.congr_obj e.counit_eq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsoCat/Variant42ae4b99dde83bff44bf4d6ae130197ceca0fcd45c5ee8d870a3b5a83ed336bd.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4839a5c5f8813e3490845a4b89a413b6332103` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
