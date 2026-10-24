# even_center_axisOriginMatches_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12d82ed2af813090359f3c90581ce0c90f916569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55f9a154-c957-3a57-0f9d-dea6ef2b9f92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57787b25-38d5-53f8-807e-96c18d02cdb1",
  "kind": "theorem",
  "lexical_name": "even_center_axisOriginMatches_false",
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
  "slug": "even-center-axisoriginmatches-false--3dfda0ca9f2e6f69d0267fbb",
  "source": {
    "blob": "12d82ed2af813090359f3c90581ce0c90f916569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dfda0ca9f2e6f69d0267fbbd2bf7ee2a62954a24c17cd51b8c509ea65fbe3ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57787b25-38d5-53f8-807e-96c18d02cdb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_center_axisOriginMatches_false (half : Nat)
    (index : Fin (2 * (half + 1))) :
    ¬ AxisOriginMatches (2 * (half + 1)) center index := by
  unfold AxisOriginMatches center
  intro equality
  push_cast at equality
  ring_nf at equality
  have naturalEquality : 2 * index.val + 1 = 2 * (half + 1) := by
    apply Nat.cast_injective (R := ℚ)
    push_cast
    linarith
  omega

end BitMatrix.Geometry.CarrierGrid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d82ed2af813090359f3c90581ce0c90f916569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
