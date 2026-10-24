# multiforkEquivPiFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7679532a9323d186263581be5bfa8577deb7bc1e8853297245f193ac5a337548",
  "kind": "def",
  "lexical_name": "multiforkEquivPiFork",
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
  "slug": "multiforkequivpifork--3369dc236b794915353b4d1d",
  "source": {
    "blob": "5e0f3deff3ea693c168989767e4bbb2222e52e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 524,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant4dd4f9a000e0ea5ebc21e203c6de57208cef65b2a82156000df172d123485893.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3369dc236b794915353b4d1d6b1c0782f2be5ea30222ee6cdb2c598c7d9cd85e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant4dd4f9a000e0ea5ebc21e203c6de57208cef65b2a82156000df172d123485893.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7679532a9323d186263581be5bfa8577deb7bc1e8853297245f193ac5a337548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def multiforkEquivPiFork : Multifork I ≌ Fork I.fstPiMap I.sndPiMap where
  functor := toPiForkFunctor I
  inverse := ofPiForkFunctor I
  unitIso :=
    NatIso.ofComponents fun K =>
      Cones.ext (Iso.refl _) (by
        rintro (_ | _) <;> simp [← Fork.app_one_eq_ι_comp_left])
  counitIso :=
    NatIso.ofComponents fun K => Fork.ext (Iso.refl _)

end MulticospanIndex

namespace Multicofork

variable {J : MultispanShape.{w, w'}} {I : MultispanIndex J C} (K : Multicofork I)

/-- The maps to the cocone point of a multicofork from the objects on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant4dd4f9a000e0ea5ebc21e203c6de57208cef65b2a82156000df172d123485893.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant4dd4f9a000e0ea5ebc21e203c6de57208cef65b2a82156000df172d123485893.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0f3deff3ea693c168989767e4bbb2222e52e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
