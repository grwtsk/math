# ExtraDegeneracy.s_comp_π_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ac733b-3686-e7f6-56ca-838e9426db75",
  "kind": "theorem",
  "lexical_name": "ExtraDegeneracy.s_comp_π_succ",
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
  "slug": "extradegeneracy-s-comp-succ--f9ac7f59e54eb522ca33972d",
  "source": {
    "blob": "0eecf0332cf438167c7fb1a696a5f923dc843e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 297,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ac7f59e54eb522ca33972d2e8027ccb55a22bf01ecfd723b36f0f6b7a5dce5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ac733b-3686-e7f6-56ca-838e9426db75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExtraDegeneracy.s_comp_π_succ (n : ℕ) (i : Fin (n + 1)) :
    ExtraDegeneracy.s f S n ≫ WidePullback.π _ i.succ =
      @WidePullback.π _ _ _ f.right (fun _ : Fin (n + 1) => f.left) (fun _ => f.hom) _ i := by
  dsimp [ExtraDegeneracy.s]
  simp only [WidePullback.lift_π]
  split_ifs with h
  · simp only [Fin.ext_iff, Fin.val_succ, Fin.val_zero, add_eq_zero, and_false] at h
  · simp only [Fin.pred_succ]
#align category_theory.arrow.augmented_cech_nerve.extra_degeneracy.s_comp_π_succ CategoryTheory.Arrow.AugmentedCechNerve.ExtraDegeneracy.s_comp_π_succ

-- porting note: @[simp] removed as the linter complains the LHS is not in normal form
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant851cb8abac1455a0954fe29ad29c916ce043dbbc6d05c3857e9b72f0074ee027.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eecf0332cf438167c7fb1a696a5f923dc843e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
