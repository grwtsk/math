# inv_lift_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56d244b90dc0b4eed58b53b22a0f5fee09a29a4498d6a1e6562378487fcaccdf",
  "kind": "instance",
  "lexical_name": "inv_lift_inv",
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
  "slug": "inv-lift-inv--c0fd6c29b1de6454c4cc2cfc",
  "source": {
    "blob": "08bba803143aa27ad75b3be31d3f546b0053d0e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0fd6c29b1de6454c4cc2cfc148b97d9e162ec808bc7486c07529c9a852b2e6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56d244b90dc0b4eed58b53b22a0f5fee09a29a4498d6a1e6562378487fcaccdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inv_lift_inv (f : R ≅ S) (φ : a ≅ b) [p.IsHomLift f.hom φ.hom] :
    p.IsHomLift f.inv φ.inv := by
  apply of_commSq
  apply CommSq.horiz_inv (f := p.mapIso φ) (commSq p f.hom φ.hom)

/-- Given `φ : a ≅ b` and `f : R ⟶ S`, such that `φ.hom` lifts `f`, then `φ.inv` lifts the
inverse of `f` given by `isoOfIsoLift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bba803143aa27ad75b3be31d3f546b0053d0e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
