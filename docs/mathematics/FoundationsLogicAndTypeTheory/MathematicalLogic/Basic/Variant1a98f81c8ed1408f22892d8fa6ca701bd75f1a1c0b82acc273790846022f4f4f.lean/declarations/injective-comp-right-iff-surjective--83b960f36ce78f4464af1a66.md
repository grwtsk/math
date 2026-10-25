# injective_comp_right_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b1942b-8418-8dbc-dd9a-2e9a19f87a66",
  "kind": "theorem",
  "lexical_name": "injective_comp_right_iff_surjective",
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
  "slug": "injective-comp-right-iff-surjective--83b960f36ce78f4464af1a66",
  "source": {
    "blob": "232af472750295a454209a697754955e009c7428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b960f36ce78f4464af1a66a8510449f8b4a0a8bd480879ae39bbd43f37f3f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b1942b-8418-8dbc-dd9a-2e9a19f87a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_comp_right_iff_surjective {γ : Type*} [Nontrivial γ] :
    Injective (fun g : β → γ ↦ g ∘ f) ↔ Surjective f := by
  refine ⟨not_imp_not.mp fun not_surj inj ↦ not_subsingleton γ ⟨fun c c' ↦ ?_⟩,
    (·.injective_comp_right)⟩
  have ⟨b₀, hb⟩ := not_forall.mp not_surj
  classical have := inj (a₁ := fun _ ↦ c) (a₂ := (if · = b₀ then c' else c)) ?_
  · simpa using congr_fun this b₀
  ext a; simp only [comp_apply, ite_eq_right fun h ↦ hb ⟨a, h⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1a98f81c8ed1408f22892d8fa6ca701bd75f1a1c0b82acc273790846022f4f4f.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232af472750295a454209a697754955e009c7428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
