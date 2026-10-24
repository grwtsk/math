# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cba00c7812787bed9cf9efe2067d1950457192bba1ab8d5f9afaf2490a054a5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--383c4cb38328e69c1db9df3f",
  "source": {
    "blob": "59267a5e4668d49001c2fe0c73f918e54132f54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant811a2d64f30a132f908d8343bd4f73e104cdda5a5a62c76f13cc462d23e7bdcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:383c4cb38328e69c1db9df3fd0c69d7276a6828d1c8ae4ff7be806945c2ebae4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant811a2d64f30a132f908d8343bd4f73e104cdda5a5a62c76f13cc462d23e7bdcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cba00c7812787bed9cf9efe2067d1950457192bba1ab8d5f9afaf2490a054a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) CompletelyDistribLattice.toCompleteDistribLattice
    [CompletelyDistribLattice α] : CompleteDistribLattice α where
  iInf_sup_le_sup_sInf a s := calc
    _ = ⨅ b : s, ⨆ x : Bool, cond x a b := by simp_rw [iInf_subtype, iSup_bool_eq, cond]
    _ = _ := iInf_iSup_eq
    _ ≤ _ := iSup_le fun f => by
      by_cases ∀ i, f i = false
      case pos => simp [h, iInf_subtype, ← sInf_eq_iInf]
      case neg =>
        have ⟨i, h⟩ : ∃ i, f i = true := by simpa using h
        refine le_trans (iInf_le _ i) ?_
        simp [h]
  inf_sSup_le_iSup_inf a s := calc
    _ = ⨅ x : Bool, ⨆ y : cond x PUnit s, match x with | true => a | false => y.1 := by
      simp_rw [iInf_bool_eq, cond, iSup_const, iSup_subtype, sSup_eq_iSup]
    _ = _ := iInf_iSup_eq
    _ ≤ _ := by
      simp_rw [iInf_bool_eq]
      refine iSup_le fun g => le_trans ?_ (le_iSup _ (g false).1)
      refine le_trans ?_ (le_iSup _ (g false).2)
      rfl

-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant811a2d64f30a132f908d8343bd4f73e104cdda5a5a62c76f13cc462d23e7bdcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant811a2d64f30a132f908d8343bd4f73e104cdda5a5a62c76f13cc462d23e7bdcb.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59267a5e4668d49001c2fe0c73f918e54132f54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
