# IterM.DefaultConsumers.forIn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59e09b6b5dadc2147bd3962af9a876b4fd071447f4a8cb23d2192d1a7860cfb7",
  "kind": "def",
  "lexical_name": "IterM.DefaultConsumers.forIn'",
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
  "slug": "iterm-defaultconsumers-forin--ce2fddb110a9141d82b0e879",
  "source": {
    "blob": "da790ebc593fce905c4c803667114a01385478a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce2fddb110a9141d82b0e8796d4bcc50bf57c3542c379f302d1bfc2757482887",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59e09b6b5dadc2147bd3962af9a876b4fd071447f4a8cb23d2192d1a7860cfb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.DefaultConsumers.forIn' {m : Type w → Type w'} {α : Type w} {β : Type w}
    [Iterator α m β]
    {n : Type x → Type x'} [Monad n]
    (lift : ∀ γ δ, (γ → n δ) → m γ → n δ) (γ : Type x)
    (PlausibleForInStep : β → γ → ForInStep γ → Prop)
    (it : IterM (α := α) m β) (init : γ)
    (P : β → Prop) (hP : ∀ b, it.IsPlausibleIndirectOutput b → P b)
    (f : (b : β) → P b → (c : γ) → n (Subtype (PlausibleForInStep b c))) : n γ :=
  haveI : Nonempty γ := ⟨init⟩
  WellFounded.extrinsicFix₃ (C₃ := fun _ _ _ => n γ) (InvImage (IteratorLoop.rel α m PlausibleForInStep) (fun x => (x.1, x.2.1)))
    (fun it acc (hP : ∀ b, it.IsPlausibleIndirectOutput b → P b) recur => (lift _ _ · it.step) fun s => do
      match s.inflate with
      | .yield it' out h =>
        match ← f out (hP out <| .direct ⟨_, h⟩) acc with
        | ⟨.yield c, h'⟩ => recur it' c (fun _ h' => hP _ <| .indirect ⟨_, rfl, h⟩ h') (Or.inl ⟨out, ‹_›, ‹_›⟩)
        | ⟨.done c, h⟩ => return c
      | .skip it' h => recur it' acc (fun _ h' => hP _ <| .indirect ⟨_, rfl, h⟩ h') (Or.inr ⟨‹_›, rfl⟩)
      | .done _ => return acc) it init hP

/--
This is the loop implementation of the default instance `IteratorLoop.defaultImplementation`.
-/
@[specialize, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da790ebc593fce905c4c803667114a01385478a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
