# log_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de98d0e3-c2b3-42d2-f855-70b3ba3083ab",
  "kind": "theorem",
  "lexical_name": "log_monotone",
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
  "slug": "log-monotone--aad48380a9d9af4cf4118f69",
  "source": {
    "blob": "0f2fcd5d8652da3549135bf42084766253efaaa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad48380a9d9af4cf4118f69b1c0f5f7e4a8808a4413aec6681cd9e0b26d837b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de98d0e3-c2b3-42d2-f855-70b3ba3083ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_monotone {b : ℕ} : Monotone (log b) := by
  refine' monotone_nat_of_le_succ fun n => _
  cases' le_or_lt b 1 with hb hb
  · rw [log_of_left_le_one hb]
    exact zero_le _
  · exact le_log_of_pow_le hb (pow_log_le_add_one _ _)
#align nat.log_monotone Nat.log_monotone

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Log/Variant2589ca85fcf095906393320096b18bb87d7ea86e1ddd76ec6044eb28b9a9ad51.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2fcd5d8652da3549135bf42084766253efaaa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
