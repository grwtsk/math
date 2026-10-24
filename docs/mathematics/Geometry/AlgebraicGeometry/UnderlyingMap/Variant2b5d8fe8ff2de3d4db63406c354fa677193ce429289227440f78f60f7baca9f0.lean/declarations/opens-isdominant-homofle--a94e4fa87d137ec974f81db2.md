# Opens.isDominant_homOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09d3a630-e3b4-7908-b459-617326921faa",
  "kind": "lemma",
  "lexical_name": "Opens.isDominant_homOfLE",
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
  "slug": "opens-isdominant-homofle--a94e4fa87d137ec974f81db2",
  "source": {
    "blob": "f2ca5cdadd17ccab3fd026f5b1c0982f01b15d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 276,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94e4fa87d137ec974f81db2c826958f0ea0ccf561e5529c850e968104b81a46",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d3a630-e3b4-7908-b459-617326921faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Opens.isDominant_homOfLE {U V : X.Opens} (hU : Dense (X := X) U) (hU' : U ≤ V) :
    IsDominant (X.homOfLE hU') :=
  have : IsDominant (X.homOfLE hU' ≫ V.ι) := by simpa using Opens.isDominant_ι hU
  IsDominant.of_comp_of_isOpenImmersion (g := V.ι) _

end IsDominant

section SpecializingMap

open TopologicalSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant2b5d8fe8ff2de3d4db63406c354fa677193ce429289227440f78f60f7baca9f0.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ca5cdadd17ccab3fd026f5b1c0982f01b15d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
