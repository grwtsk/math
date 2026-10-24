# double

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
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:528bbd87-ca2c-b0cd-7cc7-ff321677c6c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5d191e8-bd0d-e19a-12da-a27422bf6edf",
  "kind": "lemma",
  "lexical_name": "double",
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
  "slug": "double--54ca6b6f00a7c1e4ddd71ab2",
  "source": {
    "blob": "ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54ca6b6f00a7c1e4ddd71ab20fad491f30929f7b86e56ec62d90c931c222c115",
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

Occurrence: `result:c5d191e8-bd0d-e19a-12da-a27422bf6edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma double {B : Fin 6 → ℕ} {i : Fin 6}
    (rB : Reachable B) (hi : i < 4) (pB : 0 < B i) (zB : B (i + 2) = 0) :
    Reachable (B + single (i + 1) (B (i + 1)) - single i 1) := by
  convert!
    (rB.push (show i + 1 < 5 by grind)).move2 hi (by rw [add_apply, sub_apply, single_succ]; grind)
  ext k; simp only [comp_apply, add_apply, sub_apply]
  have (j : Fin 6) : j + 1 + 1 = j + 2 := by grind
  rcases eq_or_ne k i with rfl | hk
  · rw [swap_apply_of_ne_of_ne (by simp) (by simp), single_succ, this, single_add_two, Nat.sub_zero]
  · rcases eq_or_ne k (i + 1) with rfl | hk'
    · grind [swap_apply_left, single_eq_same]
    · rw [single_eq_of_ne hk']
      rcases eq_or_ne k (i + 2) with rfl | hk''
      · grind [swap_apply_right, single_eq_same, single_succ]
      · rw [swap_apply_of_ne_of_ne hk' hk'', single_eq_of_ne hk', this, single_eq_of_ne hk'',
          tsub_zero]

/-- `double` as many times as possible, emptying $B_i$ and doubling $B_{i+1}$ that many times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2010Q5/Variant3185bdbaa0a4f4fa9e7b9a456d5338421c7be1a571d4129b71082185ac636a10.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9775e6ac4e40d6b9992dd9244670a3f22e5fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
