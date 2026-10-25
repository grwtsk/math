# map_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceacb339-59f4-b5d4-d36f-8dcf90e7ba20",
  "kind": "theorem",
  "lexical_name": "map_trans",
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
  "slug": "map-trans--2570c787bedf4ee9e524b6ab",
  "source": {
    "blob": "342b41613ca84cb834cdf15869080d34f9b54147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2570c787bedf4ee9e524b6ab9e2e88d50aa3e79c80765f5693000bcd80c982f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceacb339-59f4-b5d4-d36f-8dcf90e7ba20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_trans (R : CertificateRestriction F G) (T : CertificateRestriction G H)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (r : SufficientRepresentation.{u, v₃, w₃, c} H)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (hrq : SufficientRepresentation.IsMinimal.{u, v₃, w₃, c, b} r)
    (hrp : SufficientRepresentation.IsMinimal.{u, v₃, w₃, c, a} r)
    (sp : Function.Surjective p.compress) :
    T.map q r hrq ∘ R.map p q hq = (R.trans T).map p r hrp := by
  apply (R.trans T).map_unique p r hrp sp
  intro s
  simp only [Function.comp_apply, map_compress]

/-- Directed restriction is natural under any coherent reversible changes of
the fine and coarse encodings. The supplied equivalences retain the actual
state-compression diagrams; no information-losing restriction is inverted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variant06a570bd0656e78da76a113fbb5d1939700d779ca7cdd7949190a40faa4b4e16.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342b41613ca84cb834cdf15869080d34f9b54147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
