# inject_dummies_lem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bafb41ad3fbd84e81c28b2c57cd586917fef0a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2604e53e-8d54-ecf0-eb49-b89e6916fe2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64dfc7f6-123a-b4d0-909c-1d12760f5a57",
  "kind": "theorem",
  "lexical_name": "inject_dummies_lem",
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
  "slug": "inject-dummies-lem--3f84d0f3df448a2c81fbc9cf",
  "source": {
    "blob": "4bafb41ad3fbd84e81c28b2c57cd586917fef0a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 260,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f84d0f3df448a2c81fbc9cf56575f030bb56093b26c4d38c26199ce98c21920",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64dfc7f6-123a-b4d0-909c-1d12760f5a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inject_dummies_lem (f : β → γ) (g : γ → Option β) (inv : ∀ x, g (f x) = some x)
    (p : Poly (α ⊕ β)) (v : α → ℕ) :
    (∃ t, p (v ⊗ t) = 0) ↔ ∃ t, p.map (inl ⊗ inr ∘ f) (v ⊗ t) = 0 := by
  dsimp; refine ⟨fun t => ?_, fun t => ?_⟩ <;> obtain ⟨t, ht⟩ := t
  · have : (v ⊗ (0 ::ₒ t) ∘ g) ∘ (inl ⊗ inr ∘ f) = v ⊗ t :=
      funext fun s => by rcases s with a | b <;> dsimp [(· ∘ ·)]; try rw [inv]; rfl
    exact ⟨(0 ::ₒ t) ∘ g, by rwa [this]⟩
  · have : v ⊗ t ∘ f = (v ⊗ t) ∘ (inl ⊗ inr ∘ f) := funext fun s => by rcases s with a | b <;> rfl
    exact ⟨t ∘ f, by rwa [this]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant1fdfc58ad924e8dc4a6a3beadcecfd943dc6b9f9d8f9534a0ad535c41bcd0590.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bafb41ad3fbd84e81c28b2c57cd586917fef0a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
