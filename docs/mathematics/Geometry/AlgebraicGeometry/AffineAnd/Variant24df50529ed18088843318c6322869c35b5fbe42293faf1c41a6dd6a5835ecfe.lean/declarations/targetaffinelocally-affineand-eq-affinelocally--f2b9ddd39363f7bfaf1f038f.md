# targetAffineLocally_affineAnd_eq_affineLocally

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84176b2b-93cc-a402-059b-63ffead0693b",
  "kind": "lemma",
  "lexical_name": "targetAffineLocally_affineAnd_eq_affineLocally",
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
  "slug": "targetaffinelocally-affineand-eq-affinelocally--f2b9ddd39363f7bfaf1f038f",
  "source": {
    "blob": "41a2da0fabaa493e5d93539a169e7b6e452039e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b9ddd39363f7bfaf1f038f7627c73a2cd8b017241ac9a8fdc597835c686c7b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84176b2b-93cc-a402-059b-63ffead0693b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma targetAffineLocally_affineAnd_eq_affineLocally (hQ : RingHom.PropertyIsLocal Q) :
    targetAffineLocally (affineAnd Q) =
      (@IsAffineHom ⊓ @affineLocally Q : MorphismProperty Scheme.{u}) := by
  ext X Y f
  exact targetAffineLocally_affineAnd_iff_affineLocally hQ f

variable {W : ∀ {R S : Type u} [CommRing R] [CommRing S], (R →+* S) → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a2da0fabaa493e5d93539a169e7b6e452039e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
