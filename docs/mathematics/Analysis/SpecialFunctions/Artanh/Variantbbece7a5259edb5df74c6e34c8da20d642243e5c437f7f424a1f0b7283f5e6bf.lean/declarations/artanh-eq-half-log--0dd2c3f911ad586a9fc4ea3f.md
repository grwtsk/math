# artanh_eq_half_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0dd7efab7be4e5d7cd52190b89a67b5dcec4ba9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef82f106-777a-9cc7-5d6c-64b7fba6397e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c9d0d93-8323-9201-b410-0ec1d8fccfa5",
  "kind": "theorem",
  "lexical_name": "artanh_eq_half_log",
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
  "slug": "artanh-eq-half-log--0dd2c3f911ad586a9fc4ea3f",
  "source": {
    "blob": "c0dd7efab7be4e5d7cd52190b89a67b5dcec4ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 55,
    "path": "GRWTSK/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd2c3f911ad586a9fc4ea3f4f63cf2897a4f4cdcf2c77e3f29698e620240d60",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c9d0d93-8323-9201-b410-0ec1d8fccfa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem artanh_eq_half_log {x : ℝ} (hx : x ∈ Icc (-1) 1) :
    artanh x = 1 / 2 * log ((1 + x) / (1 - x)) := by
  rw [artanh, log_sqrt <| div_nonneg (by grind) (by grind), one_div_mul_eq_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Artanh/Variantbbece7a5259edb5df74c6e34c8da20d642243e5c437f7f424a1f0b7283f5e6bf.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0dd7efab7be4e5d7cd52190b89a67b5dcec4ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
