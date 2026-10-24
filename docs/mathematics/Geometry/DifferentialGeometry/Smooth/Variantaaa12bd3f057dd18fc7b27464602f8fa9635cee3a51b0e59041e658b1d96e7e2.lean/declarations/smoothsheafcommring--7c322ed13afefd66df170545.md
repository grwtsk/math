# smoothSheafCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97f93f9490875ac9d2c7354fe797ffdc286cf426e2aa27429c11045a0870ced9",
  "kind": "def",
  "lexical_name": "smoothSheafCommRing",
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
  "slug": "smoothsheafcommring--7c322ed13afefd66df170545",
  "source": {
    "blob": "476f47d527c0d340cae23555ab99e7d80b527abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 280,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c322ed13afefd66df170545f2128e696e81e5b4e983eed9d52fd60cebbbca7e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97f93f9490875ac9d2c7354fe797ffdc286cf426e2aa27429c11045a0870ced9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothSheafCommRing : TopCat.Sheaf CommRingCat.{u} (TopCat.of M) :=
  { val := smoothPresheafCommRing IM I M R
    cond := by
      rw [CategoryTheory.Presheaf.isSheaf_iff_isSheaf_forget _ _
        (CategoryTheory.forget CommRingCat)]
      exact CategoryTheory.Sheaf.cond (smoothSheaf IM I M R) }

-- sanity check: applying the `CommRingCat`-to-`TypeCat` forgetful functor to the sheaf-of-rings of
-- smooth functions gives the sheaf-of-types of smooth functions.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variantaaa12bd3f057dd18fc7b27464602f8fa9635cee3a51b0e59041e658b1d96e7e2.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476f47d527c0d340cae23555ab99e7d80b527abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
