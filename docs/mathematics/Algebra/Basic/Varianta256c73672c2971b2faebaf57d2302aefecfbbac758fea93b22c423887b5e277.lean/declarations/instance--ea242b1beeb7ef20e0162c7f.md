# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900161f4174ab958c7466ea757d3b4e1f93b5418cf8d5cc6526a35fa22750193",
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
  "slug": "instance--ea242b1beeb7ef20e0162c7f",
  "source": {
    "blob": "1740914a27f12e5f513bad7fae5158bba963861d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 388,
    "path": "GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea242b1beeb7ef20e0162c7fb2186d9a7304fdd710b9e367db66dbc663447248",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900161f4174ab958c7466ea757d3b4e1f93b5418cf8d5cc6526a35fa22750193`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 500) {K : Type*} [Field K] [IsAlgClosed K] : Infinite K := by
  apply Infinite.of_not_fintype
  intro hfin
  set n := Fintype.card K
  set f := (X : K[X]) ^ (n + 1) - 1
  have hfsep : Separable f := separable_X_pow_sub_C 1 (by simp) one_ne_zero
  apply Nat.not_succ_le_self (Fintype.card K)
  have hroot : n.succ = Fintype.card (f.rootSet K) := by
    erw [card_rootSet_eq_natDegree hfsep (IsAlgClosed.splits_domain _), natDegree_X_pow_sub_C]
  rw [hroot]
  exact Fintype.card_le_of_injective _ Subtype.coe_injective

end IsAlgClosed

namespace IsAlgClosure

-- Porting note: errors with
-- > cannot find synthesization order for instance alg_closed with type
-- > all remaining arguments have metavariables
-- attribute [local instance] IsAlgClosure.alg_closed

section

variable (R : Type u) [CommRing R] (L : Type v) (M : Type w) [Field L] [Field M]
variable [Algebra R M] [NoZeroSMulDivisors R M] [IsAlgClosure R M]
variable [Algebra R L] [NoZeroSMulDivisors R L] [IsAlgClosure R L]

/-- A (random) isomorphism between two algebraic closures of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1740914a27f12e5f513bad7fae5158bba963861d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
