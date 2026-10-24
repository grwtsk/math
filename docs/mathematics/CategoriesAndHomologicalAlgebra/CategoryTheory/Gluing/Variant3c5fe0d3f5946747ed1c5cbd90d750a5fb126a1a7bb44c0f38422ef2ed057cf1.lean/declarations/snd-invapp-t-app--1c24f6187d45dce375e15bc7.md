# snd_invApp_t_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b71a13bf-7f32-eb8e-b279-7142dbfbc372",
  "kind": "theorem",
  "lexical_name": "snd_invApp_t_app",
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
  "slug": "snd-invapp-t-app--1c24f6187d45dce375e15bc7",
  "source": {
    "blob": "5b22faf6e74743307c51f730cca92f28fd647146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c24f6187d45dce375e15bc7af8048608d2cc5957a688f4db0705b3c07b6e0d9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b71a13bf-7f32-eb8e-b279-7142dbfbc372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_invApp_t_app (i j k : D.J) (U : Opens (pullback (D.f i j) (D.f i k)).carrier) :
    (π₂⁻¹ i, j, k) U ≫ (D.t k i).c.app _ =
      (D.t' k i j).c.app _ ≫
        (π₁⁻¹ k, j, i) (unop _) ≫
          (D.V (k, i)).presheaf.map (eqToHom (D.snd_invApp_t_app' i j k U).choose.symm) := by
  have e := (D.snd_invApp_t_app' i j k U).choose_spec
  replace e := reassoc_of% e
  rw [← e]
  simp [eqToHom_map]

variable [HasLimits C]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b22faf6e74743307c51f730cca92f28fd647146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
