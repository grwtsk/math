# descResidueField_stalkClosedPointTo_fromSpecResidueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2647c94-789d-83b0-bf22-d79e1bcf6781",
  "kind": "lemma",
  "lexical_name": "descResidueField_stalkClosedPointTo_fromSpecResidueField",
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
  "slug": "descresiduefield-stalkclosedpointto-fromspecresiduefield--633891eaa7acc5d6f5c6adaf",
  "source": {
    "blob": "d13d9e638a8f38ad32c4f81b442e1b8505eed5f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 281,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633891eaa7acc5d6f5c6adaf298295d7fa7831e7674f8cef57026754e2e04df7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2647c94-789d-83b0-bf22-d79e1bcf6781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma descResidueField_stalkClosedPointTo_fromSpecResidueField
    (K : Type u) [Field K] (X : Scheme.{u}) (f : Spec (.of K) ⟶ X) :
    Spec.map (@descResidueField (CommRingCat.of K) _ X _ (Scheme.stalkClosedPointTo f)
        _) ≫
      X.fromSpecResidueField (f.base (closedPoint K)) = f := by
  rw [X.descResidueField_fromSpecResidueField]
  rw [Scheme.Spec_stalkClosedPointTo_fromSpecStalk]

end fromResidueField

/-- A helper lemma to work with `AlgebraicGeometry.Scheme.SpecToEquivOfField`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant8c926913c3058b4a683773432cefa0aed2be606067b8583bfc625e37cfed29ba.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13d9e638a8f38ad32c4f81b442e1b8505eed5f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
