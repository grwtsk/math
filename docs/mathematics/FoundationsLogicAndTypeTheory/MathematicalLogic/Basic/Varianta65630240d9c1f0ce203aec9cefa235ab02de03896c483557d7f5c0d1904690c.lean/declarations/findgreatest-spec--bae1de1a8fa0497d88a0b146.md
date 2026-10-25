# findGreatest_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42d90b47b8de02e8c8ff64eb18db489e0a134a20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:853f0b15-19ed-012d-d374-3a5b6ba7e82f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40ea89a9-73ce-7aab-b3d7-f4e1d43acec8",
  "kind": "theorem",
  "lexical_name": "findGreatest_spec",
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
  "slug": "findgreatest-spec--bae1de1a8fa0497d88a0b146",
  "source": {
    "blob": "42d90b47b8de02e8c8ff64eb18db489e0a134a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae1de1a8fa0497d88a0b146704e0843e55ae42d468c095baae26c800a603d42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ea89a9-73ce-7aab-b3d7-f4e1d43acec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem findGreatest_spec (hmb : m ≤ n) (hm : P m) : P (Nat.findGreatest P n) := by
  by_cases h : Nat.findGreatest P n = 0
  · cases m
    · rwa [h]
    exact ((findGreatest_eq_zero_iff.1 h) (zero_lt_succ _) hmb hm).elim
  · exact (findGreatest_eq_iff.1 rfl).2.1 h
#align nat.find_greatest_spec Nat.findGreatest_spec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42d90b47b8de02e8c8ff64eb18db489e0a134a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
