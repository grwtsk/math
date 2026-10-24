# IicProdIoi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:661f086eaca37c416c4180d581a007fdc4c4c7f73cf86027bb31a94234f85345",
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
  "slug": "iicprodioi--cff7203ad7d23fdc6a90cf65",
  "source": {
    "blob": "6ad570c3db434b0cb1d0c167fe77923cde195a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 128,
    "path": "GRWTSK/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cff7203ad7d23fdc6a90cf657669d62c0ce1fae16bb05f75dd5c46a233c1c263",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:661f086eaca37c416c4180d581a007fdc4c4c7f73cf86027bb31a94234f85345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–153.

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
    refine .of_eval (fun i ↦ ?_)
    by_cases hi : i ≤ a <;> simp only [Equiv.coe_fn_mk, hi, ↓reduceDIte]
    · exact measurable_fst.eval
    · exact measurable_snd.eval

end MeasurableEquiv

end LinearOrder

section Nat

variable {X : ℕ → Type*} [∀ n, MeasurableSpace (X n)]

/-- Identifying `{a + 1}` with `Ioc a (a + 1)`, as a measurable equiv on dependent functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad570c3db434b0cb1d0c167fe77923cde195a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
