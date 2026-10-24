# ProjectiveResolution.iso_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e344c1eb-2b5a-484b-abcc-81808625203f",
  "kind": "lemma",
  "lexical_name": "ProjectiveResolution.iso_inv_naturality",
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
  "slug": "projectiveresolution-iso-inv-naturality--a16d379136533ece0ab4f85e",
  "source": {
    "blob": "b9701eb8ff5f044393296844860bc916020457c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 248,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16d379136533ece0ab4f85e9eae2c81f557d2faf1c996fdbefa910bd3d4a406",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e344c1eb-2b5a-484b-abcc-81808625203f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProjectiveResolution.iso_inv_naturality {X Y : C} (f : X ⟶ Y)
    (P : ProjectiveResolution X) (Q : ProjectiveResolution Y)
    (φ : P.complex ⟶ Q.complex) (comm : φ.f 0 ≫ Q.π.f 0 = P.π.f 0 ≫ f) :
    P.iso.inv ≫ (projectiveResolutions C).map f =
      (HomotopyCategory.quotient _ _).map φ ≫ Q.iso.inv := by
  apply HomotopyCategory.eq_of_homotopy
  apply liftHomotopy f
  all_goals
    cat_disch

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9701eb8ff5f044393296844860bc916020457c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
