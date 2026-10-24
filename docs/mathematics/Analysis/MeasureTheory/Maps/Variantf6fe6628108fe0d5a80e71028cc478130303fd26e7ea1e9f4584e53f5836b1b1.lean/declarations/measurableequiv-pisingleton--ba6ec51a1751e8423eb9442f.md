# MeasurableEquiv.piSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b24e9c0f9a2e8872577d6beb2678bd506ea595d74702b60d5f2909f4608816b9",
  "kind": "def",
  "lexical_name": "MeasurableEquiv.piSingleton",
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
  "slug": "measurableequiv-pisingleton--ba6ec51a1751e8423eb9442f",
  "source": {
    "blob": "1ddf81b513445b5a96d5aaf10687ee16c6a93d3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba6ec51a1751e8423eb9442f1864bb374ea474bd754b56d5b353f3429c30865b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b24e9c0f9a2e8872577d6beb2678bd506ea595d74702b60d5f2909f4608816b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MeasurableEquiv.piSingleton (a : ℕ) : X (a + 1) ≃ᵐ Π i : Ioc a (a + 1), X i where
  toFun x i := (Nat.mem_Ioc_succ.1 i.2).symm ▸ x
  invFun x := x ⟨a + 1, right_mem_Ioc.2 a.lt_succ_self⟩
  left_inv := fun x ↦ by simp
  right_inv := fun x ↦ funext fun i ↦ by cases Nat.mem_Ioc_succ' i; rfl
  measurable_toFun := by
    simp_rw [eqRec_eq_cast]
    refine measurable_pi_lambda _ (fun i ↦ (MeasurableEquiv.cast _ ?_).measurable)
    cases Nat.mem_Ioc_succ' i; rfl
  measurable_invFun := measurable_pi_apply _

end Nat

end Definitions

section Lemmas

variable {ι : Type*} [LinearOrder ι] [LocallyFiniteOrder ι] [DecidableLE ι] {X : ι → Type*}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ddf81b513445b5a96d5aaf10687ee16c6a93d3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
