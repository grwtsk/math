# pow_inter_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5bfed85daed8501a067817f7e0751231b3b9517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:085c27bb-bc9a-3a0d-1441-faa7bf11ca24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:311dc905-2549-8f45-6019-299e446faf77",
  "kind": "lemma",
  "lexical_name": "pow_inter_pow",
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
  "slug": "pow-inter-pow--b24f8e3e3ead0b184e91b78c",
  "source": {
    "blob": "d5bfed85daed8501a067817f7e0751231b3b9517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b24f8e3e3ead0b184e91b78c4750ddee3a86fce1651cfe38fccfab1acf574938",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:311dc905-2549-8f45-6019-299e446faf77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_inter_pow (hA : IsApproximateSubgroup K A) (hB : IsApproximateSubgroup L B) (hm : 2 ≤ m)
    (hn : 2 ≤ n) :
    IsApproximateSubgroup (K ^ (2 * m - 1) * L ^ (2 * n - 1)) (A ^ m ∩ B ^ n) where
  one_mem := ⟨Set.one_mem_pow hA.one_mem, Set.one_mem_pow hB.one_mem⟩
  inv_eq_self := by simp_rw [inter_inv, ← inv_pow, hA.inv_eq_self, hB.inv_eq_self]
  sq_covBySMul := by
    refine (hA.pow_inter_pow_covBySMul_sq_inter_sq hB (by omega) (by omega)).subset ?_
      (by gcongr; exacts [hA.one_mem, hB.one_mem])
    calc
      (A ^ m ∩ B ^ n) ^ 2 ⊆ (A ^ m) ^ 2 ∩ (B ^ n) ^ 2 := Set.inter_pow_subset
      _ = A ^ (2 * m) ∩ B ^ (2 * n) := by simp [pow_mul']

end IsApproximateSubgroup

open Set in
/-- A `1`-approximate subgroup is the same thing as a subgroup. -/
@[to_additive (attr := simp)
"A `1`-approximate subgroup is the same thing as a subgroup."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ApproximateSubgroup/Variant5a34eb7253c18903d3ed3ad34c24494b1445982d811266c18c758e3b4ae5840d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5bfed85daed8501a067817f7e0751231b3b9517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
