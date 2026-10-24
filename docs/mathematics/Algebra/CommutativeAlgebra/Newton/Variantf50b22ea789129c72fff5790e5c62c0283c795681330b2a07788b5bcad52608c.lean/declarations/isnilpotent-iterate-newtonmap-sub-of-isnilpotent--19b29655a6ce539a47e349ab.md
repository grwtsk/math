# isNilpotent_iterate_newtonMap_sub_of_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba02692cff946c5f06ab074f2ec00b10023b9943",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7e47b69-9390-d7d3-3aa0-329ad18a5b5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1ea3e88-7890-7eb9-ee47-68fd923b045b",
  "kind": "theorem",
  "lexical_name": "isNilpotent_iterate_newtonMap_sub_of_isNilpotent",
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
  "slug": "isnilpotent-iterate-newtonmap-sub-of-isnilpotent--19b29655a6ce539a47e349ab",
  "source": {
    "blob": "ba02692cff946c5f06ab074f2ec00b10023b9943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b29655a6ce539a47e349ab12e5b922f1a24e1234c0892f44aa9c88f37971b0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1ea3e88-7890-7eb9-ee47-68fd923b045b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_iterate_newtonMap_sub_of_isNilpotent (h : IsNilpotent <| aeval x P) (n : ℕ) :
    IsNilpotent <| P.newtonMap^[n] x - x := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [iterate_succ', comp_apply, newtonMap_apply, sub_right_comm]
    refine (Commute.all _ _).isNilpotent_sub ih <| (Commute.all _ _).isNilpotent_mul_right ?_
    simpa using Commute.isNilpotent_add (Commute.all _ _)
      (isNilpotent_aeval_sub_of_isNilpotent_sub P ih) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantf50b22ea789129c72fff5790e5c62c0283c795681330b2a07788b5bcad52608c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba02692cff946c5f06ab074f2ec00b10023b9943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
