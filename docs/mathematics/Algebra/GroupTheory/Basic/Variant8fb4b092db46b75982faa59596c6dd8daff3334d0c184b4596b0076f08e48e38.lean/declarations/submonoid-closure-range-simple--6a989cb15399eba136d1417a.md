# submonoid_closure_range_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:852ac354-155a-aeef-f911-e8dcaca53a87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd01d190-903a-998d-eea7-7065200f3eed",
  "kind": "theorem",
  "lexical_name": "submonoid_closure_range_simple",
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
  "slug": "submonoid-closure-range-simple--6a989cb15399eba136d1417a",
  "source": {
    "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 242,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a989cb15399eba136d1417a2d0f84f65e70f37941c119e382d3126f221b9231",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd01d190-903a-998d-eea7-7065200f3eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submonoid_closure_range_simple : Submonoid.closure (range cs.simple) = ⊤ := by
  have : range cs.simple = range cs.simple ∪ (range cs.simple)⁻¹ := by
    simp_rw [inv_range, inv_simple, union_self]
  rw [this, ← Subgroup.closure_toSubmonoid, subgroup_closure_range_simple, Subgroup.top_toSubmonoid]

/-! ### Induction principles for Coxeter systems -/

/-- If `p : W → Prop` holds for all simple reflections, it holds for the identity, and it is
preserved under multiplication, then it holds for all elements of `W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
