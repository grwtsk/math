# finite_terminal_network

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd60881c-26c5-3433-b76c-7a9b1d43dfc4",
  "kind": "theorem",
  "lexical_name": "finite_terminal_network",
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
  "slug": "finite-terminal-network--4095f92b87f71579bfe2d54a",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15351,
    "line": 15328,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4095f92b87f71579bfe2d54a764326f8d5f7b3bf21b2d5ca47213d9777fab4ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd60881c-26c5-3433-b76c-7a9b1d43dfc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15328–15351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_terminal_network (hC : IsComponent (PrimaryEdge P) C)
    (F : Finset (Set S × Set S))
    (hF : ∀ q ∈ F, TerminalProfile P C q.1 ∧ TerminalProfile P C q.2)
    (hv : ValidContext P Γ) (hc : ProofContext Γ γ) :
    ∃ Δ δ, ∃ e : Embedding P Γ γ Δ δ, ProofContext Δ δ ∧
      ∀ q ∈ F, Transfer P Δ δ ((W.type q.1).rename e.names) ((W.type q.2).rename e.names) := by
  induction F using Finset.induction_on generalizing Γ γ with
  | empty => exact ⟨Γ,γ,Embedding.refl hv γ,hc,by simp⟩
  | @insert a F han ih =>
    obtain ⟨ha₁,ha₂⟩ := hF a (Finset.mem_insert_self _ _)
    obtain ⟨Δ,δ,e,hΔ,hs⟩ := ih W (fun q hq => hF q (Finset.mem_insert_of_mem hq)) hv hc
    obtain ⟨I₁,K₁,h₁,_hi₁,hk₁⟩ := ha₁
    obtain ⟨I₂,K₂,h₂,hi₂,_hk₂⟩ := ha₂
    obtain ⟨Θ,θ,f,hΘ,hnew⟩ := (W.rename e).terminal_transfer hC h₁ hk₁ h₂ hi₂ e.valid hΔ
    refine ⟨Θ,θ,e.comp f,hΘ,?_⟩
    intro q hq
    rcases Finset.mem_insert.mp hq with rfl | hq
    · simpa only [Embedding.comp,WitnessFamily.rename,Expr.rename_comp] using hnew
    · obtain ⟨s,hsort⟩ := (hF q (Finset.mem_insert_of_mem hq)).1.feasible.1
      have ht := (hs q hq).rename f (e.typing (W.sorted q.1
        (hF q (Finset.mem_insert_of_mem hq)).1.feasible s hsort))
      simpa only [Embedding.comp,Expr.rename_comp] using ht

/-- One fixed finite legal context has every pairwise terminal transfer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L15328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
