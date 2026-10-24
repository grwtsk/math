# not_irreducible_of_aleph0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "466ce1cf2d323594886f58fcdb148923be5add4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b71a480-eb0c-778a-6bf5-3c8dfc9ea096",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bdade48-9be1-7f15-615f-3f596ea1ce86",
  "kind": "theorem",
  "lexical_name": "not_irreducible_of_aleph0_le",
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
  "slug": "not-irreducible-of-aleph0-le--028e24db3dffe9420176b7f1",
  "source": {
    "blob": "466ce1cf2d323594886f58fcdb148923be5add4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:028e24db3dffe9420176b7f158502014084bf6170238d625390985d323f11408",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bdade48-9be1-7f15-615f-3f596ea1ce86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_irreducible_of_aleph0_le (ha : ℵ₀ ≤ a) : ¬Irreducible a := by
  rw [irreducible_iff, not_and_or]
  refine Or.inr fun h => ?_
  simpa [mul_aleph0_eq ha, isUnit_iff, (one_lt_aleph0.trans_le ha).ne', one_lt_aleph0.ne'] using
    @h a ℵ₀

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466ce1cf2d323594886f58fcdb148923be5add4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
