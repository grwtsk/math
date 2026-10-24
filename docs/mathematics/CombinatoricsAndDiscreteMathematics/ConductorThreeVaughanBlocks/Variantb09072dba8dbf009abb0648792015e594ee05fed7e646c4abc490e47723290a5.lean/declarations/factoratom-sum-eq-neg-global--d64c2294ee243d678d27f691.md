# factorAtom_sum_eq_neg_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f2b92b5-360b-98a7-598e-2331782e60a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cfb7272-d66f-3bcd-8598-5449418b26f0",
  "kind": "theorem",
  "lexical_name": "factorAtom_sum_eq_neg_global",
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
  "slug": "factoratom-sum-eq-neg-global--d64c2294ee243d678d27f691",
  "source": {
    "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d64c2294ee243d678d27f691b0b756e9ef7e5ef7b9c91c0aa123eaab4d31411e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfb7272-d66f-3bcd-8598-5449418b26f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factorAtom_sum_eq_neg_global {N x : ℕ} (hx : x ≤ 2 * N) :
    (∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      -bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) := by
  classical
  let carrier : Finset (VaughanFactorPair N) :=
    Finset.univ.filter (IsVaughanTypeIIFactor N)
  calc
    (∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      ∑ q ∈ carrier,
        if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0 := by
          simp only [vaughanTypeIIFactorIndex]
          simp_rw [vaughanTypeIIFactorCoefficient_eq_neg_term]
          apply (Finset.sum_subtype carrier ?_ fun q ↦
            if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0).symm
          intro q
          simp [carrier]
    _ = ∑ q : VaughanFactorPair N,
        if IsVaughanTypeIIFactor N q then
          (if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0)
        else 0 := by
          simp [carrier, Finset.sum_filter]
    _ = ∑ q : VaughanFactorPair N,
        -(conductorThreeVaughanLeft N q.1 *
          typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
            (fun k : VaughanScaleIndex N ↦ k.1) x q.1 q.2 *
          conductorThreeVaughanRight N q.2) := by
            apply Fintype.sum_congr
            exact typeIIFactor_indicator_eq hx
    _ = -bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) := by
          rw [Fintype.sum_prod_type]
          simp only [bilinearMatrixPairing, Finset.sum_neg_distrib]

/-- Exact dyadic block decomposition of the fixed conductor-three Vaughan
Type II prefix.  The displayed minus sign is Vaughan's Type II sign; every
block pairing itself uses the unsigned left and right arithmetic vectors.

The hypothesis only says that the requested prefix lies inside the finite
scale `VaughanScaleIndex N`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e752bd8f3a50dc445e316a26f7fc21873d657866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
