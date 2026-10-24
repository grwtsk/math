# residue_residueFieldCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99746608-70c1-7187-0b2d-3f22986cf514",
  "kind": "lemma",
  "lexical_name": "residue_residueFieldCongr",
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
  "slug": "residue-residuefieldcongr--fb93173032189e94fced27fb",
  "source": {
    "blob": "e661a3bf6a498cb60e57412edd041e172bccdbf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 223,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb93173032189e94fced27fb5f5ed6208d1c31ef7e799b913c180f5f0669cb52",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99746608-70c1-7187-0b2d-3f22986cf514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residue_residueFieldCongr (X : Scheme) {x y : X} (h : x = y) :
    X.residue x ≫ (X.residueFieldCongr h).hom =
      (X.presheaf.stalkCongr (.of_eq h)).hom ≫ X.residue y := by
  subst h
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Varianta58ef65cbfbf207f76b953f8de2b4426eae8b023c20164f6ec646b58b55385de.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e661a3bf6a498cb60e57412edd041e172bccdbf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
