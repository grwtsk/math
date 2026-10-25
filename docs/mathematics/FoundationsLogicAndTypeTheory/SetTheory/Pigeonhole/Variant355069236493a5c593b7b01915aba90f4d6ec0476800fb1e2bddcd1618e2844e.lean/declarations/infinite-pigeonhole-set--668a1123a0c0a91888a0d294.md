# infinite_pigeonhole_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a44af483-c118-0fc6-bcd7-ac29c7dfbeee",
  "kind": "theorem",
  "lexical_name": "infinite_pigeonhole_set",
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
  "slug": "infinite-pigeonhole-set--668a1123a0c0a91888a0d294",
  "source": {
    "blob": "099488c9c85a4ae7d225015711495e72a2d4ee60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668a1123a0c0a91888a0d294b568eab2fb270998bd533a413555650c9b3dcdb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44af483-c118-0fc6-bcd7-ac29c7dfbeee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_pigeonhole_set {β α : Type u} {s : Set β} (f : s → α) (θ : Cardinal)
    (hθ : θ ≤ #s) (h₁ : ℵ₀ ≤ θ) (h₂ : #α < θ.ord.cof) :
    ∃ (a : α) (t : Set β) (h : t ⊆ s), θ ≤ #t ∧ ∀ ⦃x⦄ (hx : x ∈ t), f ⟨x, h hx⟩ = a := by
  obtain ⟨a, ha⟩ := infinite_pigeonhole_card f θ hθ h₁ h₂
  refine ⟨a, { x | ∃ h, f ⟨x, h⟩ = a }, ?_, ?_, ?_⟩
  · rintro x ⟨hx, _⟩
    exact hx
  · refine
      ha.trans
        (ge_of_eq <|
          Quotient.sound ⟨Equiv.trans ?_ (Equiv.subtypeSubtypeEquivSubtypeExists _ _).symm⟩)
    simp only [coe_eq_subtype, mem_singleton_iff, mem_preimage, mem_ofPred_eq]
    rfl
  rintro x ⟨_, hx'⟩; exact hx'

/-- A function whose domain's cardinality is infinite and strictly greater than its codomain's
has a fiber with cardinality strictly great than the codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099488c9c85a4ae7d225015711495e72a2d4ee60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
