# coeff_eq_zero_of_totalDegree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b114efcfa5389f4c40f6f0df339d42dd7969402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/324da5ed3561171acf4705e703157e001d193403571ea393d1b560cc334d4360.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5944f940-e3c3-0ad1-bb14-aa367a7ffa08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ac4322f-676e-601d-3c76-b5ab1fc7c89e",
  "kind": "theorem",
  "lexical_name": "coeff_eq_zero_of_totalDegree_lt",
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
  "slug": "coeff-eq-zero-of-totaldegree-lt--0f27e52af6d92f7467da2570",
  "source": {
    "blob": "1b114efcfa5389f4c40f6f0df339d42dd7969402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 578,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degrees/Variant324da5ed3561171acf4705e703157e001d193403571ea393d1b560cc334d4360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f27e52af6d92f7467da25708bfaa6513d3b14d658ce8992ac35e33eafb668b4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degrees/Variant324da5ed3561171acf4705e703157e001d193403571ea393d1b560cc334d4360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ac4322f-676e-601d-3c76-b5ab1fc7c89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_eq_zero_of_totalDegree_lt {f : MvPolynomial σ R} {d : σ →₀ ℕ}
    (h : f.totalDegree < ∑ i ∈ d.support, d i) : f.coeff d = 0 := by
  rw [totalDegree, Finset.sup_lt_iff] at h
  · specialize h d
    rw [mem_support_iff] at h
    refine not_not.mp (mt h ?_)
    exact lt_irrefl _
  · exact lt_of_le_of_lt (Nat.zero_le _) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degrees/Variant324da5ed3561171acf4705e703157e001d193403571ea393d1b560cc334d4360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degrees/Variant324da5ed3561171acf4705e703157e001d193403571ea393d1b560cc334d4360.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b114efcfa5389f4c40f6f0df339d42dd7969402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
