# rotate_essImageDistTriang

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c98bee0-e476-7934-6761-e11b2febd344",
  "kind": "lemma",
  "lexical_name": "rotate_essImageDistTriang",
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
  "slug": "rotate-essimagedisttriang--d08530101addafc368bac621",
  "source": {
    "blob": "b4fa7490470e73ae631fc62deb33058c8b258742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08530101addafc368bac621538a57af0b34f46208919862f2005ddcc2db9130",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c98bee0-e476-7934-6761-e11b2febd344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rotate_essImageDistTriang [Preadditive D] [L.Additive]
    [∀ (n : ℤ), (shiftFunctor D n).Additive] (T : Triangle D) :
  T ∈ L.essImageDistTriang ↔ T.rotate ∈ L.essImageDistTriang := by
  constructor
  · rintro ⟨T', e', hT'⟩
    exact ⟨T'.rotate, (rotate D).mapIso e' ≪≫ L.mapTriangleRotateIso.app T',
      rot_of_distTriang T' hT'⟩
  · rintro ⟨T', e', hT'⟩
    exact ⟨T'.invRotate, (triangleRotation D).unitIso.app T ≪≫ (invRotate D).mapIso e' ≪≫
      L.mapTriangleInvRotateIso.app T', inv_rot_of_distTriang T' hT'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4fa7490470e73ae631fc62deb33058c8b258742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
