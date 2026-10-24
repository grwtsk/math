# ContinuousOn.image_Icc_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93f59105-6639-3c0e-b963-62e2b717524a",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.image_Icc_of_antitoneOn",
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
  "slug": "continuouson-image-icc-of-antitoneon--4328249789c174a7cb3e5c8b",
  "source": {
    "blob": "c5bf572783901ffd21b3561e225ac461290c80b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 881,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4328249789c174a7cb3e5c8beb852267ffd9419e8bd1d7235d94738b9938bcb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93f59105-6639-3c0e-b963-62e2b717524a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.image_Icc_of_antitoneOn (hab : a ≤ b) (hf : ContinuousOn f (Icc a b))
    (hmono : AntitoneOn f (Icc a b)) : f '' Icc a b = Icc (f b) (f a) :=
  subset_antisymm (hmono.image_Icc_subset) (intermediate_value_Icc' hab hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bf572783901ffd21b3561e225ac461290c80b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
