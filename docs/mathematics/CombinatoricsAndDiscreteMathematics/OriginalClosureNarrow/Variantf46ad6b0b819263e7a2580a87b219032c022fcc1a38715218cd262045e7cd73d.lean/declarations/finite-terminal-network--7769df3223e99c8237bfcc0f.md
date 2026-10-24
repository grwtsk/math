# finite_terminal_network

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:383544db-0a31-8fdb-81b5-97718d5854f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a45ee5d4-70fd-c213-e724-2a497a61f860",
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
  "slug": "finite-terminal-network--7769df3223e99c8237bfcc0f",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15345,
    "line": 15322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7769df3223e99c8237bfcc0f37d62e78c1d0037f2539f76137535ed12c22d0d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a45ee5d4-70fd-c213-e724-2a497a61f860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15322–15345.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L15322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
