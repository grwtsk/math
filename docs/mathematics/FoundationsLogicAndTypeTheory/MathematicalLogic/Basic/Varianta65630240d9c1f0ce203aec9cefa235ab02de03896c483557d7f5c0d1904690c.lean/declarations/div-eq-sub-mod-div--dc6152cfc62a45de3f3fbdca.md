# div_eq_sub_mod_div

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
      "line": 542,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78177cc6-f76e-f1a2-4756-48b53a23e168",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab97188b-6868-ab46-5dca-d6625152e72e",
  "kind": "theorem",
  "lexical_name": "div_eq_sub_mod_div",
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
  "slug": "div-eq-sub-mod-div--dc6152cfc62a45de3f3fbdca",
  "source": {
    "blob": "42d90b47b8de02e8c8ff64eb18db489e0a134a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 542,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6152cfc62a45de3f3fbdca712f7e9c5d1ec75482545d0c758caa75d07cbc57",
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

Occurrence: `result:ab97188b-6868-ab46-5dca-d6625152e72e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_sub_mod_div : m / n = (m - m % n) / n := by
  by_cases n0 : n = 0
  · rw [n0, Nat.div_zero, Nat.div_zero]
  · have : m - m % n = n * (m / n) := by
      rw [tsub_eq_iff_eq_add_of_le (Nat.mod_le _ _), add_comm, mod_add_div]
    rw [this, mul_div_right _ (Nat.pos_of_ne_zero n0)]
#align nat.div_eq_sub_mod_div Nat.div_eq_sub_mod_div

/-- `m` is not divisible by `n` if it is between `n * k` and `n * (k + 1)` for some `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta65630240d9c1f0ce203aec9cefa235ab02de03896c483557d7f5c0d1904690c.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42d90b47b8de02e8c8ff64eb18db489e0a134a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
