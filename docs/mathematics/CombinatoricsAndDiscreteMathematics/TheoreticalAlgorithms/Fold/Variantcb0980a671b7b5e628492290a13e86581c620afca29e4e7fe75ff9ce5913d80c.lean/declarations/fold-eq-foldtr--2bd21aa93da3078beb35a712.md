# fold_eq_foldTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290e13d6-27bf-242b-9e7b-c6759ad64a9c",
  "kind": "theorem",
  "lexical_name": "fold_eq_foldTR",
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
  "slug": "fold-eq-foldtr--2bd21aa93da3078beb35a712",
  "source": {
    "blob": "579a2bab97965b27d212eeeecd9cc2000695ad9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd21aa93da3078beb35a71295ec5f9ec87a772f22b967cfbda3462f571bbb38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290e13d6-27bf-242b-9e7b-c6759ad64a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem fold_eq_foldTR : @fold = @foldTR :=
  funext fun α => funext fun n => funext fun f => funext fun init =>
  let rec go : ∀ m n f, fold (m + n) f init = foldTR.loop (m + n) f m (by omega) (fold n (fun i h => f i (by omega)) init)
    | 0,      n, f => by
      simp only [foldTR.loop]
      have t : 0 + n = n := by omega
      rw [fold_congr t]
    | succ m, n, f => by
      have t : (m + 1) + n = m + (n + 1) := by omega
      rw [foldTR.loop]
      simp only [succ_eq_add_one]
      rw [fold_congr t, foldTR_loop_congr t, go, fold]
      congr
      omega
  go n 0 f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `579a2bab97965b27d212eeeecd9cc2000695ad9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
