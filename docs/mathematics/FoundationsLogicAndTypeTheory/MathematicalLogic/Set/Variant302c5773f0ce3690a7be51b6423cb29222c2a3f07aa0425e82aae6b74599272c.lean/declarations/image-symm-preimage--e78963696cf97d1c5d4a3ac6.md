# image_symm_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:892ae739-d791-b009-7f57-bd1f8b7f04d3",
  "kind": "theorem",
  "lexical_name": "image_symm_preimage",
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
  "slug": "image-symm-preimage--e78963696cf97d1c5d4a3ac6",
  "source": {
    "blob": "854d136bde8223995aa6c586afb59cbcfb53c628",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 504,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78963696cf97d1c5d4a3ac6ffc06596314d540f277342ae64635e31695d91ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:892ae739-d791-b009-7f57-bd1f8b7f04d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_symm_preimage {α β} {f : α → β} (hf : Injective f) (u s : Set α) :
    (fun x => (Set.image f s hf).symm x : f '' s → α) ⁻¹' u = Subtype.val ⁻¹' (f '' u) := by
  ext ⟨b, a, has, rfl⟩
  have : ∀ h : ∃ a', a' ∈ s ∧ a' = a, Classical.choose h = a := fun h => (Classical.choose_spec h).2
  simp [Equiv.Set.image, Equiv.Set.imageOfInjOn, hf.eq_iff, this]
#align equiv.set.image_symm_preimage Equiv.Set.image_symm_preimage

/-- If `α` is equivalent to `β`, then `Set α` is equivalent to `Set β`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variant302c5773f0ce3690a7be51b6423cb29222c2a3f07aa0425e82aae6b74599272c.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `854d136bde8223995aa6c586afb59cbcfb53c628` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
