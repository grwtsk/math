# sqrt_isSqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "419cd9fee93f54184edff1792649fbb73dc0a747",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc9ba24c-8127-7471-10ae-4ccf443b2507",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f32f9422-4194-e8f7-50e4-605467d7921e",
  "kind": "theorem",
  "lexical_name": "sqrt_isSqrt",
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
  "slug": "sqrt-issqrt--647afabe86329d486ae1406a",
  "source": {
    "blob": "419cd9fee93f54184edff1792649fbb73dc0a747",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647afabe86329d486ae1406aad2670ca0dd45cad5c2c05469fd84ad83e7f4e9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f32f9422-4194-e8f7-50e4-605467d7921e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sqrt_isSqrt (n : ℕ) : IsSqrt n (sqrt n) := by
  match n with
  | 0 => simp [IsSqrt]
  | 1 => simp [IsSqrt]
  | n + 2 =>
    have h : ¬ (n + 2) ≤ 1 := by simp
    simp only [IsSqrt, sqrt, h, ite_false]
    refine ⟨sqrt.iter_sq_le _ _, sqrt.lt_iter_succ_sq _ _ ?_⟩
    simp only [mul_add, add_mul, one_mul, mul_one, ← add_assoc]
    rw [lt_add_one_iff, add_assoc, ← mul_two]
    refine le_trans (div_add_mod' (n + 2) 2).ge ?_
    rw [add_comm, add_le_add_iff_right, add_mod_right]
    simp only [zero_lt_two, add_div_right, succ_mul_succ_eq]
    refine le_trans (b := 1) ?_ ?_
    · exact (lt_succ.1 $ mod_lt n zero_lt_two)
    · simp only [le_add_iff_nonneg_left]; exact zero_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `419cd9fee93f54184edff1792649fbb73dc0a747` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
