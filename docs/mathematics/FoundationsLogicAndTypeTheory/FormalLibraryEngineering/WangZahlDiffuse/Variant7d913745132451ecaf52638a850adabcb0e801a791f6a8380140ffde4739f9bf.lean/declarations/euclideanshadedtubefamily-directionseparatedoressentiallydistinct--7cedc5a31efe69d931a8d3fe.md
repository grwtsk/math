# EuclideanShadedTubeFamily.directionSeparatedOrEssentiallyDistinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f2483e91dc6313633bab66cd6d493f2d79bc6c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94e3bada-d6c1-35aa-873b-3ccc438b0fcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fc635b0-9642-f175-5497-6d99047a7db5",
  "kind": "theorem",
  "lexical_name": "EuclideanShadedTubeFamily.directionSeparatedOrEssentiallyDistinct",
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
  "slug": "euclideanshadedtubefamily-directionseparatedoressentiallydistinct--7cedc5a31efe69d931a8d3fe",
  "source": {
    "blob": "8f2483e91dc6313633bab66cd6d493f2d79bc6c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cedc5a31efe69d931a8d3fe89d2c854f1b8474a07295ab19095ef2a4c605000",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc635b0-9642-f175-5497-6d99047a7db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EuclideanShadedTubeFamily.directionSeparatedOrEssentiallyDistinct
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) :
    DirectionSeparatedOrEssentiallyDistinct family := by
  exact Or.inr family.essentiallyDistinct

/-! ## Non-vacuous unsigned diffuse certificate -/

/-- Geometric data for one non-vacuous, unsigned Wang--Zahl application.

The exact per-tube shading normalization is the usual dyadic-pigeonholed
form: every active shading has volume `lambda * tubeVolume`.  Requiring a
nonempty family and a finite nonzero Wolff constant prevents the lower-bound
surface from being discharged by an empty tube set or a degenerate control
constant.

`unionLowerBound` is an explicit supplied theorem at this scale.  It is not
derived from the remaining fields in this module, because doing so requires
the external Wang--Zahl theorem (including its sufficiently-small-scale
quantifier). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlDiffuse/Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f2483e91dc6313633bab66cd6d493f2d79bc6c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
