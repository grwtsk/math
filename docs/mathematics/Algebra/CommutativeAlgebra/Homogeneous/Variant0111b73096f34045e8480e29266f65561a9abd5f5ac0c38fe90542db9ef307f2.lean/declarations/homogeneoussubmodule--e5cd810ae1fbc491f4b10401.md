# homogeneousSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dda175fd8a24d081964c0f1a6ea82affbef8d2efc5f3a45938be4c72219b4f77",
  "kind": "def",
  "lexical_name": "homogeneousSubmodule",
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
  "slug": "homogeneoussubmodule--e5cd810ae1fbc491f4b10401",
  "source": {
    "blob": "ce82b31cde78e83847082ecfdb4e831a77636cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5cd810ae1fbc491f4b1040129a843f1b50bae1d5db93c730574bffda15bb2cd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dda175fd8a24d081964c0f1a6ea82affbef8d2efc5f3a45938be4c72219b4f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homogeneousSubmodule (n : ℕ) : Submodule R (MvPolynomial σ R) where
  carrier := { x | x.IsHomogeneous n }
  smul_mem' r a ha c hc := by
    rw [coeff_smul] at hc
    apply ha
    intro h
    apply hc
    rw [h]
    exact smul_zero r
  zero_mem' _ hd := False.elim (hd <| coeff_zero _)
  add_mem' {a b} ha hb c hc := by
    rw [coeff_add] at hc
    obtain h | h : coeff c a ≠ 0 ∨ coeff c b ≠ 0 := by
      contrapose! hc
      simp only [hc, add_zero]
    · exact ha h
    · exact hb h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant0111b73096f34045e8480e29266f65561a9abd5f5ac0c38fe90542db9ef307f2.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce82b31cde78e83847082ecfdb4e831a77636cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
