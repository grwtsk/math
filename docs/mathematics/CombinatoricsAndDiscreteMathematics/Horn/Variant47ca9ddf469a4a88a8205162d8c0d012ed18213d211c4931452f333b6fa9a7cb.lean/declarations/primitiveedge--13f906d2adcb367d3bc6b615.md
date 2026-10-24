# primitiveEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:858fecd25e3acbddc223d6381600f35316bc959cc7e4b13a06aa62dc3f28b17c",
  "kind": "def",
  "lexical_name": "primitiveEdge",
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
  "slug": "primitiveedge--13f906d2adcb367d3bc6b615",
  "source": {
    "blob": "05d769156b768ed948a890cea00003ef6e23dbb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f906d2adcb367d3bc6b615b5e24b4b86e20b48a92302b5f14328e3c0a6bcb8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:858fecd25e3acbddc223d6381600f35316bc959cc7e4b13a06aa62dc3f28b17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primitiveEdge {n : ℕ} {i : Fin (n + 1)}
    (h₀ : 0 < i) (hₙ : i < Fin.last n) (j : Fin n) :
    (Λ[n, i] : SSet.{u}) _⦋1⦌ := by
  refine edge n i j.castSucc j.succ ?_ ?_
  · simp only [← Fin.val_fin_le, Fin.val_castSucc, Fin.val_succ, le_add_iff_nonneg_right, zero_le]
  simp only [← Fin.val_fin_lt, Fin.val_zero, Fin.val_last] at h₀ hₙ
  obtain rfl | hn : n = 2 ∨ 2 < n := by
    rw [eq_comm, or_comm, ← le_iff_lt_or_eq]; lia
  · revert i j; decide
  · exact Finset.card_le_three.trans hn

/-- The triangle in the standard simplex with vertices `k`, `k+1`, and `k+2`.

This constructor assumes `0 < i < n`,
which is the type of horn that occurs in the horn-filling condition of quasicategories. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Horn/Variant47ca9ddf469a4a88a8205162d8c0d012ed18213d211c4931452f333b6fa9a7cb.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d769156b768ed948a890cea00003ef6e23dbb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
