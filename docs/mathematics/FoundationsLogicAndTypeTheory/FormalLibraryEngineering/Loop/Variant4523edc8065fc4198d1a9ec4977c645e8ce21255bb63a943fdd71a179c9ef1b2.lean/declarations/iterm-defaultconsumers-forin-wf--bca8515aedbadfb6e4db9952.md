# IterM.DefaultConsumers.forIn'.wf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:084a55c303a5718d3dad07d616b6a31688fa1886e002c83aab00a9f764658d89",
  "kind": "def",
  "lexical_name": "IterM.DefaultConsumers.forIn'.wf",
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
  "slug": "iterm-defaultconsumers-forin-wf--bca8515aedbadfb6e4db9952",
  "source": {
    "blob": "da790ebc593fce905c4c803667114a01385478a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bca8515aedbadfb6e4db99529acc348e4c78a54dcf2b7f41406726da7526b823",
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

Occurrence: `declaration:084a55c303a5718d3dad07d616b6a31688fa1886e002c83aab00a9f764658d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IterM.DefaultConsumers.forIn'.wf {m : Type w → Type w'} {α : Type w} {β : Type w}
    [Iterator α m β] {n : Type x → Type x'} [Monad n]
    (lift : ∀ γ δ, (γ → n δ) → m γ → n δ) (γ : Type x)
    (PlausibleForInStep : β → γ → ForInStep γ → Prop)
    (wf : IteratorLoop.WellFounded α m PlausibleForInStep)
    (it : IterM (α := α) m β) (init : γ)
    (P : β → Prop) (hP : ∀ b, it.IsPlausibleIndirectOutput b → P b)
    (f : (b : β) → P b → (c : γ) → n (Subtype (PlausibleForInStep b c))) : n γ :=
  haveI : WellFounded _ := wf
  (lift _ _ · it.step) fun s =>
    match s.inflate with
    | .yield it' out h => do
      match ← f out (hP _ <| .direct ⟨_, h⟩) init with
      | ⟨.yield c, _⟩ =>
        IterM.DefaultConsumers.forIn'.wf lift _ PlausibleForInStep wf it' c P
          (fun _ h' => hP _ <| .indirect ⟨_, rfl, h⟩ h') f
      | ⟨.done c, _⟩ => return c
    | .skip it' h =>
      IterM.DefaultConsumers.forIn'.wf lift _ PlausibleForInStep wf it' init P
          (fun _ h' => hP _ <| .indirect ⟨_, rfl, h⟩ h') f
    | .done _ => return init
termination_by IteratorLoop.WithWF.mk it init (hwf := wf)
decreasing_by
  · exact Or.inl ⟨out, ‹_›, ‹_›⟩
  · exact Or.inr ⟨‹_›, rfl⟩

/--
This is the default implementation of the `IteratorLoop` class.
It simply iterates through the iterator using `IterM.step`. For certain iterators, more efficient
implementations are possible and should be used instead.
-/
@[always_inline, inline, expose, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant4523edc8065fc4198d1a9ec4977c645e8ce21255bb63a943fdd71a179c9ef1b2.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da790ebc593fce905c4c803667114a01385478a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
