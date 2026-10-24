# exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87eac08c-e566-dd22-0e96-ddf5b397ba6d",
  "kind": "theorem",
  "lexical_name": "exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le",
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
  "slug": "exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le--6a8a3f46e4a246a5e6a3b3f6",
  "source": {
    "blob": "319e154518f31d1ef48dc16fe1e54eea784d0478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8a3f46e4a246a5e6a3b3f6661efe3e6c1335bcc32e3dcedc84014bc40186ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87eac08c-e566-dd22-0e96-ddf5b397ba6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le {α : Type*} [PartialOrder α]
    [wfl : WellFoundedLT α] [wfg : WellFoundedGT α] {x y : α} (h : x ≤ y) :
    ∃ a : ℕ → α, a 0 = x ∧ ∃ n, a n = y ∧ ∀ i < n, a i ⋖ a (i + 1) := by
  let S := Set.Icc x y
  let hS : BoundedOrder S :=
    { top := ⟨y, h, le_rfl⟩, le_top x := x.2.2, bot := ⟨x, le_rfl, h⟩, bot_le x := x.2.1 }
  obtain ⟨a, h₁, n, h₂, e⟩ := exists_covBy_seq_of_wellFoundedLT_wellFoundedGT S
  simp only [isMin_iff_eq_bot, Subtype.ext_iff, isMax_iff_eq_top] at h₁ h₂
  exact ⟨Subtype.val ∘ a, h₁, n, h₂, fun i hi ↦ ⟨(e i hi).1, fun c hc h ↦ (e i hi).2
    (c := ⟨c, (a i).2.1.trans hc.le, h.le.trans (a _).2.2⟩) hc h⟩⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319e154518f31d1ef48dc16fe1e54eea784d0478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
