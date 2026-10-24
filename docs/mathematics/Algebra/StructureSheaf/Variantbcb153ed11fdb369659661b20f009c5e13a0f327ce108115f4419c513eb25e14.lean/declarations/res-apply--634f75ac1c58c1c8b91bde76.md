# res_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c99df6fe-3833-1418-693a-146df4599676",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e55e65dc-2c95-80f3-da74-27b7ce339848",
  "kind": "theorem",
  "lexical_name": "res_apply",
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
  "slug": "res-apply--634f75ac1c58c1c8b91bde76",
  "source": {
    "blob": "bf3b21039e02b82b04f228d342b97c2be8cf694e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 279,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:634f75ac1c58c1c8b91bde76882d67c1bd6bbe76ba7e5276f98885f66ad1411b",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55e65dc-2c95-80f3-da74-27b7ce339848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem res_apply (U V : Opens (PrimeSpectrum.Top R)) (i : V ⟶ U)
    (s : (structureSheaf R).1.obj (op U)) (x : V) :
    ((structureSheaf R).1.map i.op s).1 x = (s.1 (i x) : _) :=
  rfl
#align algebraic_geometry.structure_sheaf.res_apply AlgebraicGeometry.StructureSheaf.res_apply

/-

Notation in this comment

X = Spec R
OX = structure sheaf

In the following we construct an isomorphism between OX_p and R_p given any point p corresponding
to a prime ideal in R.

We do this via 8 steps:

1. def const (f g : R) (V) (hv : V ≤ D_g) : OX(V) [for api]
2. def toOpen (U) : R ⟶ OX(U)
3. [2] def toStalk (p : Spec R) : R ⟶ OX_p
4. [2] def toBasicOpen (f : R) : R_f ⟶ OX(D_f)
5. [3] def localizationToStalk (p : Spec R) : R_p ⟶ OX_p
6. def openToLocalization (U) (p) (hp : p ∈ U) : OX(U) ⟶ R_p
7. [6] def stalkToFiberRingHom (p : Spec R) : OX_p ⟶ R_p
8. [5,7] def stalkIso (p : Spec R) : OX_p ≅ R_p

In the square brackets we list the dependencies of a construction on the previous steps.

-/
/-- The section of `structureSheaf R` on an open `U` sending each `x ∈ U` to the element
`f/g` in the localization of `R` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantbcb153ed11fdb369659661b20f009c5e13a0f327ce108115f4419c513eb25e14.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b21039e02b82b04f228d342b97c2be8cf694e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
