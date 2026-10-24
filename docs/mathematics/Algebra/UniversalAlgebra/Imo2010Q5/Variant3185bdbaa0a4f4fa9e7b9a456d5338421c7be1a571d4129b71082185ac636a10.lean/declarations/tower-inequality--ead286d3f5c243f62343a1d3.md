# tower_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15afd846-3100-d3c8-6e3b-0cffb30b60c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcdeea94-f5b7-ac9d-90ba-9128052ecbd5",
  "kind": "lemma",
  "lexical_name": "tower_inequality",
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
  "slug": "tower-inequality--ead286d3f5c243f62343a1d3",
  "source": {
    "blob": "ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead286d3f5c243f62343a1d3efffb27ca48db7c39386d02664d8502ae131c794",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcdeea94-f5b7-ac9d-90ba-9128052ecbd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tower_inequality {m n : ℕ} (hm : m = 2010) (hn : n = 11) :
    2010 ^ 2010 ^ m ≤ 2 ^ 2 ^ 2 ^ 2 ^ 2 ^ n := by
  calc
    _ ≤ 2 ^ (11 * 2010 ^ m) := by rw [pow_mul]; gcongr <;> lia
    _ ≤ _ := Nat.pow_le_pow_right Nat.zero_lt_two ?_
  calc
    _ ≤ 2 ^ (4 + 11 * m) := by rw [pow_add, pow_mul]; gcongr <;> lia
    _ ≤ _ := Nat.pow_le_pow_right Nat.zero_lt_two ?_
  calc
    _ ≤ 2 ^ 2 ^ 2 ^ 2 := by rw [hm]; lia
    _ ≤ _ := by
      iterate 3 apply Nat.pow_le_pow_right Nat.zero_lt_two
      lia

/-- `(0, 0, 0, 2010 ^ 2010 ^ 2010 / 4, 0, 0)` is reachable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
