# executeForeignCoverage_rejects_invalid_region

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f13e3bb-e7a0-701d-63d0-56d3ba94c352",
  "kind": "theorem",
  "lexical_name": "executeForeignCoverage_rejects_invalid_region",
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
  "slug": "executeforeigncoverage-rejects-invalid-region--024fa7148f576a46a5d7054d",
  "source": {
    "blob": "a9193dd533fe1292b1619e079244172ed70b657c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:024fa7148f576a46a5d7054d06bc5972e86c695069552029b124ebd637fb7d43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f13e3bb-e7a0-701d-63d0-56d3ba94c352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem executeForeignCoverage_rejects_invalid_region
    (support : ForeignCellSupport) (samples : ForeignSampleCount) :
    executeForeignCoverage ⟨⟨.invalid, support, samples⟩⟩ =
      .error .invalidCoverage :=
  rfl

/-- Inputs to sign-sensitive exact-threshold resolution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9193dd533fe1292b1619e079244172ed70b657c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
