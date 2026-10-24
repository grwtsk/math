# IicProdIoi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eb060e173224ff4a00c05c702d34ff3faf596b2814575b59a177250299e0e3e",
  "kind": "def",
  "lexical_name": "IicProdIoi",
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
  "slug": "iicprodioi--66a08dc67bccdd85f48f8deb",
  "source": {
    "blob": "1ddf81b513445b5a96d5aaf10687ee16c6a93d3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 125,
    "path": "GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66a08dc67bccdd85f48f8deb321cfe1907750a1087f1f60298e9510f0a487a37",
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

Occurrence: `declaration:5eb060e173224ff4a00c05c702d34ff3faf596b2814575b59a177250299e0e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IicProdIoi (a : ι) :
    ((Π i : Iic a, X i) × (Π i : Set.Ioi a, X i)) ≃ᵐ (Π n, X n) where
  toFun := fun x i ↦ if hi : i ≤ a
    then x.1 ⟨i, mem_Iic.2 hi⟩
    else x.2 ⟨i, Set.mem_Ioi.2 (not_le.1 hi)⟩
  invFun := fun x ↦ (fun i ↦ x i, fun i ↦ x i)
  left_inv := fun x ↦ by
    ext i
    · simp [mem_Iic.1 i.2]
    · simp [not_le.2 <| Set.mem_Ioi.1 i.2]
  right_inv := fun x ↦ by simp
  measurable_toFun := by
    refine measurable_pi_lambda _ (fun i ↦ ?_)
    by_cases hi : i ≤ a <;> simp only [Equiv.coe_fn_mk, hi, ↓reduceDIte]
    · exact measurable_fst.eval
    · exact measurable_snd.eval
  measurable_invFun := Measurable.prodMk (measurable_restrict _) (Set.measurable_restrict _)

end MeasurableEquiv

end LinearOrder

section Nat

variable {X : ℕ → Type*} [∀ n, MeasurableSpace (X n)]

/-- Identifying `{a + 1}` with `Ioc a (a + 1)`, as a measurable equiv on dependent functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Maps/Variantf6fe6628108fe0d5a80e71028cc478130303fd26e7ea1e9f4584e53f5836b1b1.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ddf81b513445b5a96d5aaf10687ee16c6a93d3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
