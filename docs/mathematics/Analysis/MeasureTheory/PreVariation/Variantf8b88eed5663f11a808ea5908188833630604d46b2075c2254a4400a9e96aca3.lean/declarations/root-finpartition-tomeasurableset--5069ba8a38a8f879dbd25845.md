# _root_.Finpartition.toMeasurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cbccc8c2fa323043ee684c440abe9c94ca0c2c04edd9461723b4debb4b1a205",
  "kind": "abbrev",
  "lexical_name": "_root_.Finpartition.toMeasurableSet",
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
  "slug": "root-finpartition-tomeasurableset--5069ba8a38a8f879dbd25845",
  "source": {
    "blob": "f850a858bd40c3b7c73c17995acb523c35eafa48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 86,
    "path": "GRWTSK/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5069ba8a38a8f879dbd258452699cdfe99e595ef46f1fad36a28856b61200666",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cbccc8c2fa323043ee684c440abe9c94ca0c2c04edd9461723b4debb4b1a205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev _root_.Finpartition.toMeasurableSet {s : Set X} (P : Finpartition s)
    (hs : MeasurableSet s) (hP : ∀ p ∈ P.parts, MeasurableSet p) :
    Finpartition (⟨s, hs⟩ : Subtype MeasurableSet) :=
  P.toSubtype (by measurability) (by measurability) (by measurability) hs hP

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a858bd40c3b7c73c17995acb523c35eafa48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
