# Exact.comp_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e561beb1-dd0d-82b2-7aa1-47c90ad3ab0c",
  "kind": "lemma",
  "lexical_name": "Exact.comp_eq_zero",
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
  "slug": "exact-comp-eq-zero--5031695296dc0f87a397b9d8",
  "source": {
    "blob": "957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5031695296dc0f87a397b9d897c8c3e268809bb92dee4d8d2a8e92eee6f61d9c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e561beb1-dd0d-82b2-7aa1-47c90ad3ab0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Exact.comp_eq_zero (h : S.Exact) {X Y : C} {a : X ⟶ S.X₂} (ha : a ≫ S.g = 0)
    {b : S.X₂ ⟶ Y} (hb : S.f ≫ b = 0) : a ≫ b = 0 := by
  have := h.hasHomology
  have eq := h
  rw [exact_iff_iCycles_pOpcycles_zero] at eq
  rw [← S.liftCycles_i a ha, ← S.p_descOpcycles b hb, assoc, reassoc_of% eq,
    zero_comp, comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
