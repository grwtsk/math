# small_pow_of_small_tripling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffb35a30d396526678a8a71434c97805107711a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46b20e19-7d2a-f624-4d3e-a91a38765d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:933f1d27-3ccf-17bc-c0fe-3eb72858553d",
  "kind": "lemma",
  "lexical_name": "small_pow_of_small_tripling",
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
  "slug": "small-pow-of-small-tripling--3fba757ee9102cb7428f8ad0",
  "source": {
    "blob": "ffb35a30d396526678a8a71434c97805107711a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fba757ee9102cb7428f8ad06bcb6536aadd7149614e06c009b1bff242a35a7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933f1d27-3ccf-17bc-c0fe-3eb72858553d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma small_pow_of_small_tripling (hm : 3 ≤ m) (hA : #(A ^ 3) ≤ K * #A) (hAsymm : A⁻¹ = A) :
    #(A ^ m) ≤ K ^ (m - 2) * #A := by
  have (ε : ℤ) (hε : |ε| = 1) : A ^ ε = A := by
    obtain rfl | rfl := eq_or_eq_neg_of_abs_eq hε <;> simp [hAsymm]
  calc
    (#(A ^ m) : ℝ) = #((finRange m).map fun i ↦ A ^ 1).prod := by simp
    _ ≤ K ^ (m - 2) * #A :=
      inductive_claim_mul hm (fun δ hδ ↦ by simpa [this _ (hδ _), pow_succ'] using hA) _ (by simp)

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantb0484d8f1ed9c1148b23cfbce9c3c7967ad1dc972379564f7ff079da162b9510.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb35a30d396526678a8a71434c97805107711a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
