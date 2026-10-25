# partialExtrinsicFix₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce4f30f8771418e598cddae072987ae7dee3c3e45a1d97ece8baff8f30c9afa1",
  "kind": "def",
  "lexical_name": "partialExtrinsicFix₃",
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
  "slug": "partialextrinsicfix--a65225743007f5fa7ca67a5d",
  "source": {
    "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a65225743007f5fa7ca67a5d03cf45ae10f9e57b3e7c99608723c2fbe06c8dfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce4f30f8771418e598cddae072987ae7dee3c3e45a1d97ece8baff8f30c9afa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def partialExtrinsicFix₃ [∀ a b c, Nonempty (C₃ a b c)]
    (R : (a : α) ×' (b : β a) ×' γ a b → (a : α) ×' (b : β a) ×' γ a b → Prop)
    (F : (a : α) → (b : β a) → (c : γ a b) → ((a' : α) → (b' : β a') → (c' : γ a' b') → R ⟨a', b', c'⟩ ⟨a, b, c⟩ → C₃ a' b' c') → C₃ a b c)
    (a : α) (b : β a) (c : γ a b) :
    C₃ a b c :=
  extrinsicFix₃ (α := α) (β := β) (γ := fun a' b' => { c' : γ a' b' // (⟨a', b', c'⟩ : (a : α) ×' (b : β a) ×' γ a b) = ⟨a, b, c⟩ ∨ TransGen R ⟨a', b', c'⟩ ⟨a, b, c⟩ })
      (C₃ := (C₃ · · ·.1))
      (fun p q => R ⟨p.1, p.2.1, p.2.2.1⟩ ⟨q.1, q.2.1, q.2.2.1⟩)
      (fun a b c recur => F a b c.1 fun a' b' c' hR => recur a' b' ⟨c', Or.inr (by
        rcases c.property with hb | hb
        · exact .single (hb ▸ hR)
        · apply TransGen.trans ?_ ‹_›
          apply TransGen.single
          assumption)⟩ ‹_›) a b ⟨c, Or.inl rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
