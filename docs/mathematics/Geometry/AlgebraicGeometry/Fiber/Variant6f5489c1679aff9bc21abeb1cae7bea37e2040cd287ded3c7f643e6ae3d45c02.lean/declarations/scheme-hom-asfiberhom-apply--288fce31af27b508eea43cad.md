# Scheme.Hom.asFiberHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f97b3b0e-7ce6-10e9-f6b7-106ce8dc90b0",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.asFiberHom_apply",
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
  "slug": "scheme-hom-asfiberhom-apply--288fce31af27b508eea43cad",
  "source": {
    "blob": "8f06b130dff4c3da7dd5ae1a868ce9849f523402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288fce31af27b508eea43cad8e945be57555327761e948aa3d6473072f71d172",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f97b3b0e-7ce6-10e9-f6b7-106ce8dc90b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.asFiberHom_apply (f : X ⟶ Y) (x : X) (y) :
    f.asFiberHom x y = f.asFiber x :=
  (f.fiberι _).isEmbedding.injective (by simp [← Scheme.Hom.comp_apply])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant6f5489c1679aff9bc21abeb1cae7bea37e2040cd287ded3c7f643e6ae3d45c02.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f06b130dff4c3da7dd5ae1a868ce9849f523402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
