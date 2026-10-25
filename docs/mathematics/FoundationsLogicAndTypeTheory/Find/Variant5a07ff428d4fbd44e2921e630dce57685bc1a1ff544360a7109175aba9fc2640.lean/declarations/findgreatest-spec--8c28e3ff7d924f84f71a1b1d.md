# findGreatest_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d2bf259d4379a178eeca4e705d98c1baefeaa58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d8b559-e688-55c1-10b2-149eff82b992",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b37a1d74-563e-cbab-fcbd-2d5fe179354d",
  "kind": "lemma",
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
  "slug": "findgreatest-spec--8c28e3ff7d924f84f71a1b1d",
  "source": {
    "blob": "7d2bf259d4379a178eeca4e705d98c1baefeaa58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c28e3ff7d924f84f71a1b1d24d1e36836fb227205e7103d7e51cc95e951e6db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37a1d74-563e-cbab-fcbd-2d5fe179354d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma findGreatest_spec (hmb : m ≤ n) (hm : P m) : P (Nat.findGreatest P n) := by
  by_cases h : Nat.findGreatest P n = 0
  · cases m
    · rwa [h]
    exact ((findGreatest_eq_zero_iff.1 h) (zero_lt_succ _) hmb hm).elim
  · exact (findGreatest_eq_iff.1 rfl).2.1 h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant5a07ff428d4fbd44e2921e630dce57685bc1a1ff544360a7109175aba9fc2640.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d2bf259d4379a178eeca4e705d98c1baefeaa58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
