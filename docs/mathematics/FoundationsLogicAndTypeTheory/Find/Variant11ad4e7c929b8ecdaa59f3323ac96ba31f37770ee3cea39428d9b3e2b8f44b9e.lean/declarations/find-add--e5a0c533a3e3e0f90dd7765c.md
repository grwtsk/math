# find_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28d2f6d62ec0776243b8db8ee80786b5c06a62cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19b5e00e-08b4-b7fd-7980-d885f5a59f6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:106c06c8-bd51-42f9-0ac5-6d7436bb818a",
  "kind": "lemma",
  "lexical_name": "find_add",
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
  "slug": "find-add--e5a0c533a3e3e0f90dd7765c",
  "source": {
    "blob": "28d2f6d62ec0776243b8db8ee80786b5c06a62cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a0c533a3e3e0f90dd7765c32e80d48d710c5045e68eaefde62160130079cf2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106c06c8-bd51-42f9-0ac5-6d7436bb818a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma find_add {hₘ : ∃ m, p (m + n)} {hₙ : ∃ n, p n} (hn : n ≤ Nat.find hₙ) :
    Nat.find hₘ + n = Nat.find hₙ := by
  refine le_antisymm ((le_find_iff _ _).2 fun m hm hpm => Nat.not_le.2 hm ?_) ?_
  · have hnm : n ≤ m := le_trans hn (find_le hpm)
    refine Nat.add_le_of_le_sub hnm (find_le ?_)
    rwa [Nat.sub_add_cancel hnm]
  · rw [← Nat.sub_le_iff_le_add]
    refine (le_find_iff _ _).2 fun m hm hpm => Nat.not_le.2 hm ?_
    rw [Nat.sub_le_iff_le_add]
    exact find_le hpm

end Find

/-! ### `Nat.findGreatest` -/

section FindGreatest

/-- `Nat.findGreatest P n` is the largest `i ≤ bound` such that `P i` holds, or `0` if no such `i`
exists -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant11ad4e7c929b8ecdaa59f3323ac96ba31f37770ee3cea39428d9b3e2b8f44b9e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d2f6d62ec0776243b8db8ee80786b5c06a62cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
