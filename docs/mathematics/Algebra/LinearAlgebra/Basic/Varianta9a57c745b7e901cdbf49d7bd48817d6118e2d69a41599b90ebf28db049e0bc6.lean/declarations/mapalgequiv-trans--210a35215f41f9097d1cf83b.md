# mapAlgEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2c017b2-da9f-8b4c-f3be-ccb2518f2e28",
  "kind": "lemma",
  "lexical_name": "mapAlgEquiv_trans",
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
  "slug": "mapalgequiv-trans--210a35215f41f9097d1cf83b",
  "source": {
    "blob": "acf4e3d53f85753325fdead176fa806be1ba130d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 459,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:210a35215f41f9097d1cf83b48ec4a85d4b7f44b9e078c9827e5823dde9f686e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2c017b2-da9f-8b4c-f3be-ccb2518f2e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapAlgEquiv_trans (e₁ : A ≃ₐ[R] B) (e₂ : B ≃ₐ[R] C) :
    mapAlgEquiv R M (e₁.trans e₂) = (mapAlgEquiv R M e₁).trans (mapAlgEquiv R M e₂) := by ext; simp

@[deprecated (since := "2026-03-27")] alias mapRangeAlgEquiv_trans := mapAlgEquiv_trans

variable (R M) in
/-- `MonoidAlgebra.mapRangeAlgEquiv` as a `MonoidHom` from `A ≃ₐ[R] A`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acf4e3d53f85753325fdead176fa806be1ba130d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
