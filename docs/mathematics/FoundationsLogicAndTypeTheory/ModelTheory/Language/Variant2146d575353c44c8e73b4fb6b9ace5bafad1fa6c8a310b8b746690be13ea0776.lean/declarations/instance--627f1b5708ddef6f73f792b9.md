# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:650eca16841745409398962e623393a30b82b3dd4cc1a0946a21fad66c7e58df",
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
  "slug": "instance--627f1b5708ddef6f73f792b9",
  "source": {
    "blob": "45295a77a982523fa0b24c3287dab427cc38f81a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Language/Variant2146d575353c44c8e73b4fb6b9ace5bafad1fa6c8a310b8b746690be13ea0776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:627f1b5708ddef6f73f792b924b8abbab9178bb5be334323e388b15e3ca994e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Language/Variant2146d575353c44c8e73b4fb6b9ace5bafad1fa6c8a310b8b746690be13ea0776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:650eca16841745409398962e623393a30b82b3dd4cc1a0946a21fad66c7e58df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : KleeneAlgebra (Language α) :=
  { Language.instSemiring, Set.completeAtomicBooleanAlgebra with
    kstar := fun L ↦ L∗,
    one_le_kstar := fun a l hl ↦ ⟨[], hl, by simp⟩,
    mul_kstar_le_kstar := fun a ↦ (one_add_self_mul_kstar_eq_kstar a).le.trans' le_sup_right,
    kstar_mul_le_kstar := fun a ↦ (one_add_kstar_mul_self_eq_kstar a).le.trans' le_sup_right,
    kstar_mul_le_self := fun l m h ↦ by
      rw [kstar_eq_iSup_pow, iSup_mul]
      refine' iSup_le (fun n ↦ _)
      induction' n with n ih
      · simp
      rw [pow_succ', mul_assoc (l^n) l m]
      exact le_trans (le_mul_congr le_rfl h) ih,
    mul_kstar_le_self := fun l m h ↦ by
      rw [kstar_eq_iSup_pow, mul_iSup]
      refine' iSup_le (fun n ↦ _)
      induction' n with n ih
      · simp
      rw [pow_succ, ←mul_assoc m l (l^n)]
      exact le_trans (le_mul_congr h le_rfl) ih }

end Language
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Language/Variant2146d575353c44c8e73b4fb6b9ace5bafad1fa6c8a310b8b746690be13ea0776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Language/Variant2146d575353c44c8e73b4fb6b9ace5bafad1fa6c8a310b8b746690be13ea0776.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45295a77a982523fa0b24c3287dab427cc38f81a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
