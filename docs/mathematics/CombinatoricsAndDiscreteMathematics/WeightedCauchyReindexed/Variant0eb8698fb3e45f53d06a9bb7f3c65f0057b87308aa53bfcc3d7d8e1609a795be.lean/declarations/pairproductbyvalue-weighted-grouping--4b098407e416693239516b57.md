# pairProductByValue_weighted_grouping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1368b8c699acfcff4c59209472eb1bcad26194e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4e689c1-d81d-d810-7fb1-660b11e19d5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:667ba083-244a-df27-e760-f84c0549e279",
  "kind": "theorem",
  "lexical_name": "pairProductByValue_weighted_grouping",
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
  "slug": "pairproductbyvalue-weighted-grouping--4b098407e416693239516b57",
  "source": {
    "blob": "1368b8c699acfcff4c59209472eb1bcad26194e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b098407e416693239516b57be8dd071d0e75c0b987cd6ac15ca3c3c7b8c3837",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:667ba083-244a-df27-e760-f84c0549e279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairProductByValue_weighted_grouping
    [CommSemiring R]
    (N : Nat)
    (f g : ArithFn R)
    (w : Nat → R) :
    ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n f g * w n =
      ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
        f de.1 * g de.2 * w (de.1 * de.2) := by
  classical
  let P : Finset (Nat × Nat) := (Finset.Icc 1 N).product (Finset.Icc 1 N)
  calc
    ∑ n ∈ Finset.Icc 1 (N * N), pairProductByValue N n f g * w n
        = ∑ n ∈ Finset.Icc 1 (N * N),
            ∑ de ∈ P.filter (fun de : Nat × Nat => de.1 * de.2 = n),
              f de.1 * g de.2 * w n := by
          refine Finset.sum_congr rfl ?_
          intro n _hn
          simp [pairProductByValue, P, Finset.sum_mul, mul_assoc]
    _ = ∑ x ∈ (Finset.Icc 1 (N * N)).sigma
          (fun n => P.filter (fun de : Nat × Nat => de.1 * de.2 = n)),
          f x.2.1 * g x.2.2 * w x.1 := by
          exact
            (Finset.sum_sigma (Finset.Icc 1 (N * N))
              (fun n => P.filter (fun de : Nat × Nat => de.1 * de.2 = n))
              (fun x : Sigma (fun _n : Nat => Nat × Nat) =>
                f x.2.1 * g x.2.2 * w x.1)).symm
    _ = ∑ de ∈ P, f de.1 * g de.2 * w (de.1 * de.2) := by
          refine Finset.sum_bij (fun x _hx => x.2) ?hi ?hinj ?hsurj ?hterm
          · intro x hx
            exact (Finset.mem_filter.mp (Finset.mem_sigma.mp hx).2).1
          · intro x hx y hy hxy
            cases x with
            | mk nx dx =>
              cases y with
              | mk ny dy =>
                simp only at hxy
                subst dy
                have hxfilter := (Finset.mem_sigma.mp hx).2
                have hyfilter := (Finset.mem_sigma.mp hy).2
                have hxprod := (Finset.mem_filter.mp hxfilter).2
                have hyprod := (Finset.mem_filter.mp hyfilter).2
                have hfst : nx = ny := hxprod.symm.trans hyprod
                subst ny
                rfl
          · intro de hde
            refine ⟨⟨de.1 * de.2, de⟩, ?_, rfl⟩
            refine Finset.mem_sigma.mpr ?_
            constructor
            · rcases Finset.mem_product.mp hde with ⟨hdmem, hemem⟩
              have hdIcc := Finset.mem_Icc.mp hdmem
              have heIcc := Finset.mem_Icc.mp hemem
              have hpos : 1 ≤ de.1 * de.2 := by
                exact
                  Nat.succ_le_of_lt
                    (Nat.mul_pos
                      (lt_of_lt_of_le Nat.zero_lt_one hdIcc.1)
                      (lt_of_lt_of_le Nat.zero_lt_one heIcc.1))
              have hle : de.1 * de.2 ≤ N * N :=
                Nat.mul_le_mul hdIcc.2 heIcc.2
              exact Finset.mem_Icc.mpr ⟨hpos, hle⟩
            · exact Finset.mem_filter.mpr ⟨hde, rfl⟩
          · intro x hx
            have hxfilter := (Finset.mem_sigma.mp hx).2
            have hxprod := (Finset.mem_filter.mp hxfilter).2
            simp [hxprod]
    _ = ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
          f de.1 * g de.2 * w (de.1 * de.2) := by
          rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WeightedCauchyReindexed/Variant0eb8698fb3e45f53d06a9bb7f3c65f0057b87308aa53bfcc3d7d8e1609a795be.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1368b8c699acfcff4c59209472eb1bcad26194e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
