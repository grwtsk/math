# exp_mid

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
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad63772e-b5ed-0585-7402-a9c1b6ff5045",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87ae08de-5d9a-de37-2a24-f762730ac865",
  "kind": "lemma",
  "lexical_name": "exp_mid",
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
  "slug": "exp-mid--bba5d1bfe9e2490f68ee3f75",
  "source": {
    "blob": "ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 170,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba5d1bfe9e2490f68ee3f75e5904495854cb2f34f4d0e3f188c8aeda955f772",
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

Occurrence: `result:87ae08de-5d9a-de37-2a24-f762730ac865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exp_mid {k n : ℕ} (h : Reachable (single 2 (k + 1) + single 3 n)) (hn : 0 < n) :
    Reachable (single 2 k + single 3 (2 ^ n)) := by
  have md := h.exp (show 3 < 4 by decide) (by simp [hn])
    (by simp [add_apply, single_eq_of_ne]) (by simp [add_apply, single_eq_of_ne])
  convert! md.move2 (show 2 < 4 by decide) (by
    simp only [add_apply, sub_apply, single_eq_same]
    iterate 3 rw [single_eq_of_ne (by decide)]
    simp) using 1
  ext i; simp only [add_apply, sub_apply, comp_apply, Fin.reduceAdd]
  rcases eq_or_ne i 2 with rfl | i2
  · simp only [Fin.isValue, single_eq_same, ne_eq, Fin.reduceEq, not_false_eq_true,
      single_eq_of_ne, add_zero, zero_add, add_tsub_cancel_right]
    rw [swap_apply_of_ne_of_ne (by decide) (by decide), single_eq_same, single_eq_of_ne (by decide)]
    simp
  · simp only [Fin.isValue, single_eq_same, ne_eq, Fin.reduceEq, not_false_eq_true,
      single_eq_of_ne, zero_add, add_tsub_cancel_right, i2, tsub_zero]
    rcases eq_or_ne i 3 with rfl | i3
    · rw [swap_apply_left, single_eq_same, single_eq_same, single_eq_of_ne (by decide), zero_add]
    · rw [single_eq_of_ne i3]
      rcases eq_or_ne i 4 with rfl | i4
      · rw [swap_apply_right, single_eq_of_ne (by decide), single_eq_of_ne (by decide), zero_add]
      · rw [swap_apply_of_ne_of_ne i3 i4, single_eq_of_ne i2, single_eq_of_ne i4, zero_add]

/-- If all coins are in box 4, their number can be reduced by any desired amount. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
