# isGood_iff_eq_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:feb1af58-5c80-d108-24bc-8d817ed97732",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1be5a6ee-1a1d-4bdb-3dce-7f05fed7f9b9",
  "kind": "theorem",
  "lexical_name": "isGood_iff_eq_sqrt",
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
  "slug": "isgood-iff-eq-sqrt--cade0e459af46eb941fb724a",
  "source": {
    "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cade0e459af46eb941fb724af118d0d8a5c132e326319152038c27486753f88f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1be5a6ee-1a1d-4bdb-3dce-7f05fed7f9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGood_iff_eq_sqrt (hx : 1 < x) : IsGood x A ↔ A = sqrt (4 * x - 2) := by
  have h₁ : 1 < sqrt (2 * x - 1) := by simpa only [← not_le, sqrt_two_mul_sub_one_le_one] using hx
  have h₂ : 1 / 2 ≤ x := by linarith
  simp only [isGood_iff, h₂, abs_of_pos (sub_pos.2 h₁), add_add_sub_cancel, and_true]
  rw [← mul_two, ← div_eq_iff (by positivity), mul_div_assoc, div_sqrt, ← sqrt_mul' _ zero_le_two,
    eq_comm]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0325f5e80b580b9181dd110378a1b5608a41d567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
