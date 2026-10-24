# stalkToFiber_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5982d7f1-3cd2-edbb-8f6c-4801866c1937",
  "kind": "theorem",
  "lexical_name": "stalkToFiber_injective",
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
  "slug": "stalktofiber-injective--00c9718146495274509fd2bd",
  "source": {
    "blob": "26839b93e0b43442b64ce1538482c5d97294db92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00c9718146495274509fd2bdd369886ad73c4bc00cc6e8cb1a5a88a83806ec31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5982d7f1-3cd2-edbb-8f6c-4801866c1937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkToFiber_injective (x : X) : Function.Injective (F.stalkToFiber x) := by
  apply TopCat.stalkToFiber_injective
  intro U V fU hU fV hV e
  rcases hU ⟨x, U.2⟩ with ⟨U', mU, iU, gU, wU⟩
  rcases hV ⟨x, V.2⟩ with ⟨V', mV, iV, gV, wV⟩
  have wUx := wU ⟨x, mU⟩
  dsimp at wUx; rw [wUx] at e; clear wUx
  have wVx := wV ⟨x, mV⟩
  dsimp at wVx; rw [wVx] at e; clear wVx
  rcases F.germ_eq x mU mV gU gV e with ⟨W, mW, iU', iV', (e' : F.map iU'.op gU = F.map iV'.op gV)⟩
  use ⟨W ⊓ (U' ⊓ V'), ⟨mW, mU, mV⟩⟩
  refine ⟨?_, ?_, ?_⟩
  · change W ⊓ (U' ⊓ V') ⟶ U.obj
    exact Opens.infLERight _ _ ≫ Opens.infLELeft _ _ ≫ iU
  · change W ⊓ (U' ⊓ V') ⟶ V.obj
    exact Opens.infLERight _ _ ≫ Opens.infLERight _ _ ≫ iV
  · intro w
    specialize wU ⟨w.1, w.2.2.1⟩
    specialize wV ⟨w.1, w.2.2.2⟩
    refine wU.trans <| .trans ?_ wV.symm
    rw [← F.germ_res iU' w w.2.1, ← F.germ_res iV' w w.2.1,
      CategoryTheory.types_comp_apply, CategoryTheory.types_comp_apply, e']

/-- The isomorphism between a stalk of the sheafification and the original stalk.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26839b93e0b43442b64ce1538482c5d97294db92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
