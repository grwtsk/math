# basicOpen_eq_of_affine'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d57e61ee-f103-abdc-b8da-a71d0e0af49e",
  "kind": "theorem",
  "lexical_name": "basicOpen_eq_of_affine'",
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
  "slug": "basicopen-eq-of-affine--c8b50a6a80be7e92c8eed26c",
  "source": {
    "blob": "630409a7237cabb8c6a5c0abc09b506bb9a64eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 382,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8b50a6a80be7e92c8eed26c23326aa200aac03465d5377e1ec115eb9f04cc34",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d57e61ee-f103-abdc-b8da-a71d0e0af49e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_eq_of_affine' {R : CommRingCat}
    (f : (Spec.toSheafedSpace.obj (op R)).presheaf.obj (op ⊤)) :
    (Scheme.Spec.obj <| op R).basicOpen f =
      PrimeSpectrum.basicOpen ((SpecΓIdentity.app R).hom f) := by
  convert basicOpen_eq_of_affine ((SpecΓIdentity.app R).hom f)
  exact (Iso.hom_inv_id_apply (SpecΓIdentity.app R) f).symm
#align algebraic_geometry.basic_open_eq_of_affine' AlgebraicGeometry.basicOpen_eq_of_affine'

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant784eb2d1038a15b9895c3678266f38930569b1f9272da438e6244485ba055edb.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630409a7237cabb8c6a5c0abc09b506bb9a64eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
