# record_multiplicity_eq_signed_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8770f97c-3946-a670-ed72-3a8def5e5d7b",
  "kind": "theorem",
  "lexical_name": "record_multiplicity_eq_signed_source",
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
  "slug": "record-multiplicity-eq-signed-source--34864956f989aa958c597d9c",
  "source": {
    "blob": "9647212ee70d55ec57546eb2df107304e710042f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34864956f989aa958c597d9c14cb69d05f9ee95363a8ee1e02ea9d153fa17bf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8770f97c-3946-a670-ed72-3a8def5e5d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem record_multiplicity_eq_signed_source
    (packet : CanonicalPositiveTuringPacket family)
    (s : Sum Index Index) :
    (family.record (signedRecordIndex s)).multiplicity =
      multiplicity (signedIndexMap packet s).1 := by
  cases s with
  | inl i =>
      simpa only [signedRecordIndex, signedIndexMap] using
        packet.alignment.multiplicity_eq i
  | inr i =>
      calc
        (family.record i).multiplicity = multiplicity (packet.alignment.point i) :=
          packet.alignment.multiplicity_eq i
        _ = multiplicity (conjugated (packet.alignment.point i)) :=
          (multiplicity_conjugated (packet.alignment.point i)).symm
        _ = multiplicity (signedIndexMap packet (Sum.inr i)).1 := rfl

/-- Semantic alignment between executable rational rows and the signed canonical source.

`rowEquiv` prevents missing or duplicate signed records. `weight_eq` binds each
numeric weight to its actual source record. `coordinate` is the full complex ball
obligation used by the tent evaluator; the height interval in the Turing packet is
not silently promoted to this stronger statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringTentBinding.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9647212ee70d55ec57546eb2df107304e710042f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
