# abc_subcall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4d32e5ab240d793e0b40783158afab342a3d452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23217792f0fc374e67dc469fa47b6d4013ef623179f0952f65e2cb65fc95f3bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40d71f7c-d633-d786-9df2-2d8f158b134f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb55d138-5f15-ac65-fe9d-486eaa614707",
  "kind": "theorem",
  "lexical_name": "abc_subcall",
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
  "slug": "abc-subcall--26caac503b47e37a95a87c3d",
  "source": {
    "blob": "d4d32e5ab240d793e0b40783158afab342a3d452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MasonStothers/Variant23217792f0fc374e67dc469fa47b6d4013ef623179f0952f65e2cb65fc95f3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26caac503b47e37a95a87c3d4ebad07199ced55fd341ce1dc14d8f5e2413cbe4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MasonStothers/Variant23217792f0fc374e67dc469fa47b6d4013ef623179f0952f65e2cb65fc95f3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb55d138-5f15-ac65-fe9d-486eaa614707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abc_subcall {a b c w : k[X]} {hw : w ≠ 0} (wab : w = wronskian a b) (ha : a ≠ 0)
    (hb : b ≠ 0) (hc : c ≠ 0) (abc_dr_dvd_w : divRadical (a * b * c) ∣ w) :
      c.natDegree + 1 ≤ (radical (a * b * c)).natDegree := by
  have ab_nz := mul_ne_zero ha hb
  have abc_nz := mul_ne_zero ab_nz hc
  -- bound the degree of `divRadical (a * b * c)` using Wronskian `w`
  set abc_dr := divRadical (a * b * c)
  have abc_dr_ndeg_lt : abc_dr.natDegree < a.natDegree + b.natDegree := by
    calc
      abc_dr.natDegree ≤ w.natDegree := Polynomial.natDegree_le_of_dvd abc_dr_dvd_w hw
      _ < a.natDegree + b.natDegree := by rw [wab] at hw ⊢; exact natDegree_wronskian_lt_add hw
  -- add the degree of `radical (a * b * c)` to both sides and rearrange
  set abc_r := radical (a * b * c)
  apply Nat.lt_of_add_lt_add_left
  calc
    a.natDegree + b.natDegree + c.natDegree = (a * b * c).natDegree := by
      rw [Polynomial.natDegree_mul ab_nz hc, Polynomial.natDegree_mul ha hb]
    _ = ((divRadical (a * b * c)) * (radical (a * b * c))).natDegree := by
      rw [mul_comm _ (radical _), radical_mul_divRadical (a * b * c)]
    _ = abc_dr.natDegree + abc_r.natDegree := by
      rw [← Polynomial.natDegree_mul (divRadical_ne_zero abc_nz) (radical_ne_zero (a * b * c))]
    _ < a.natDegree + b.natDegree + abc_r.natDegree := by
      exact Nat.add_lt_add_right abc_dr_ndeg_lt _

/-- **Polynomial ABC theorem.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MasonStothers/Variant23217792f0fc374e67dc469fa47b6d4013ef623179f0952f65e2cb65fc95f3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MasonStothers/Variant23217792f0fc374e67dc469fa47b6d4013ef623179f0952f65e2cb65fc95f3bf.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d32e5ab240d793e0b40783158afab342a3d452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
