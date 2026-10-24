# DiophList.forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e78ceff0-afc7-d5e5-07ca-aa9d03af5076",
  "kind": "theorem",
  "lexical_name": "DiophList.forall",
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
  "slug": "diophlist-forall--7c5020cbd159a9c98673beb9",
  "source": {
    "blob": "bf1956a14f0558af61d22d906927310f409b5627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 306,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5020cbd159a9c98673beb93618684f351c8d2ae160fd161ef055d205704c8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e78ceff0-afc7-d5e5-07ca-aa9d03af5076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DiophList.forall (l : List (Set <| α → ℕ)) (d : l.Forall Dioph) :
    Dioph {v | l.Forall fun S : Set (α → ℕ) => v ∈ S} := by
  suffices ∃ (β : _) (pl : List (Poly (α ⊕ β))), ∀ v, List.Forall (fun S : Set _ => S v) l ↔
          ∃ t, List.Forall (fun p : Poly (α ⊕ β) => p (v ⊗ t) = 0) pl
    from
    let ⟨β, pl, h⟩ := this
    ⟨β, Poly.sumsq pl, fun v => (h v).trans <| exists_congr fun t => (Poly.sumsq_eq_zero _ _).symm⟩
  induction l with | nil => exact ⟨ULift Empty, [], fun _ => by simp⟩ | cons S l IH =>
  simp? at d says simp only [List.forall_cons] at d
  exact
    let ⟨⟨β, p, pe⟩, dl⟩ := d
    let ⟨γ, pl, ple⟩ := IH dl
    ⟨β ⊕ γ, p.map (inl ⊗ inr ∘ inl)::pl.map fun q => q.map (inl ⊗ inr ∘ inr),
      fun v => by
      simpa using
        Iff.trans (and_congr (pe v) (ple v))
          ⟨fun ⟨⟨m, hm⟩, ⟨n, hn⟩⟩ =>
            ⟨m ⊗ n, by
              rw [show (v ⊗ m ⊗ n) ∘ (inl ⊗ inr ∘ inl) = v ⊗ m from
                    funext fun s => by rcases s with a | b <;> rfl]; exact hm, by
              refine List.Forall.imp (fun q hq => ?_) hn; dsimp [Function.comp_def]
              rw [show
                    (fun x : α ⊕ γ => (v ⊗ m ⊗ n) ((inl ⊗ fun x : γ => inr (inr x)) x)) = v ⊗ n
                    from funext fun s => by rcases s with a | b <;> rfl]; exact hq⟩,
            fun ⟨t, hl, hr⟩ =>
            ⟨⟨t ∘ inl, by
                rwa [show (v ⊗ t) ∘ (inl ⊗ inr ∘ inl) = v ⊗ t ∘ inl from
                    funext fun s => by rcases s with a | b <;> rfl] at hl⟩,
              ⟨t ∘ inr, by
                refine List.Forall.imp (fun q hq => ?_) hr; dsimp [Function.comp_def] at hq
                rwa [show
                    (fun x : α ⊕ γ => (v ⊗ t) ((inl ⊗ fun x : γ => inr (inr x)) x)) =
                      v ⊗ t ∘ inr
                    from funext fun s => by rcases s with a | b <;> rfl] at hq ⟩⟩⟩⟩

/-- Diophantine sets are closed under intersection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1956a14f0558af61d22d906927310f409b5627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
