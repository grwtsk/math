# calculation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "783fe6f7e14c9699a3da1f8f5c06b1022b0521c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e43324f-9ce7-5591-c49f-63cfc7f860f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14b09409-dce2-b049-ea8c-7288d2198acc",
  "kind": "theorem",
  "lexical_name": "calculation",
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
  "slug": "calculation--b3b005b62dfa1fdcfa37aab1",
  "source": {
    "blob": "783fe6f7e14c9699a3da1f8f5c06b1022b0521c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1959Q1/Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b005b62dfa1fdcfa37aab1f9bb6b09ff72b920aad5da43d198e665ef6cdd5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo1959Q1/Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b09409-dce2-b049-ea8c-7288d2198acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calculation (n k : ℕ) (h1 : k ∣ 21 * n + 4) (h2 : k ∣ 14 * n + 3) : k ∣ 1 :=
  have h3 : k ∣ 2 * (21 * n + 4) := h1.mul_left 2
  have h4 : k ∣ 3 * (14 * n + 3) := h2.mul_left 3
  have h5 : 3 * (14 * n + 3) = 2 * (21 * n + 4) + 1 := by ring
  (Nat.dvd_add_right h3).mp (h5 ▸ h4)
#align imo1959_q1.calculation Imo1959Q1.calculation

end Imo1959Q1

open Imo1959Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo1959Q1/Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1959Q1/Variantfe9cc28999343548423813daf17a6c244bfcd15c621de1e6811b4b6ddb87a570.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `783fe6f7e14c9699a3da1f8f5c06b1022b0521c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
