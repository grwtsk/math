# terminal_transfer

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
      "line": 15279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a9d71d-c4fc-8290-cc7c-e1889a4d9802",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8d80a77-be69-c4ba-dfe2-a80e180efc14",
  "kind": "theorem",
  "lexical_name": "terminal_transfer",
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
  "slug": "terminal-transfer--3939ce725c766dd5675c2efb",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15307,
    "line": 15279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3939ce725c766dd5675c2efb18cfa7d9c809e73d94e31c924cfd6f8aa4486dff",
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

Occurrence: `result:e8d80a77-be69-c4ba-dfe2-a80e180efc14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15279–15307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem terminal_transfer {C : Set (Set S)} (hC : IsComponent (PrimaryEdge P) C)
    {I₁ J₁ K₁ I₂ J₂ K₂ : Set S}
    (h₁ : ProfileTriple P I₁ J₁ K₁) (hk₁ : K₁ ∈ C)
    (h₂ : ProfileTriple P I₂ J₂ K₂) (hi₂ : I₂ ∈ C)
    (hv : ValidContext P Γ) (hc : ProofContext Γ γ) :
    ∃ Δ δ, ∃ e : Embedding P Γ γ Δ δ, ProofContext Δ δ ∧
      Transfer P Δ δ ((W.type J₁).rename e.names) ((W.type J₂).rename e.names) := by
  obtain ⟨b,hp⟩ := hC.connected hk₁ hi₂
  have route := SignedPath.cons (PrimaryEdge.codomain h₁) hp
  obtain ⟨Δ,δ,e,hΔ,U,hU,_mU,tU,tr⟩ := W.carry_path route h₁.codomain hv hc
    ⟨.terminal (W.allData J₁ h₁.codomain),W.normal J₁ h₁.codomain⟩
    (W.type_mode J₁ h₁.codomain) (W.sorted J₁ h₁.codomain)
  let W' := W.rename e
  obtain ⟨r,hr⟩ := h₂.product.1
  obtain ⟨a,ha,b,hb,hab⟩ := h₂.output ▸ hr
  have hF := W'.sorted J₂ h₂.codomain
  have hConv := (tU a ha).arrow (l := .pp) (hF b hb) hab
  let f : Embedding P Δ δ (Expr.arrow .pp U (W'.type J₂) :: Δ) (modeCons .proof δ) :=
    Embedding.cons hConv .proof
  obtain ⟨s,hs⟩ := h₁.codomain.1
  have hA := e.typing (W.sorted J₁ h₁.codomain s hs)
  have out := (tr.rename f hA).trans (Transfer.converter hConv (tU a ha))
    (f.typing hA) (f.typing (tU a ha))
  refine ⟨_,_,e.comp f,hΔ.proof_cons hU,?_⟩
  simpa only [Embedding.comp,W',WitnessFamily.rename,Expr.rename_comp,f,Embedding.cons] using out
end WitnessFamily

/-- The fixed terminals are exactly the codomains of the internal domain edges
of the logic SCC. This includes the chosen logical bottom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L15279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
