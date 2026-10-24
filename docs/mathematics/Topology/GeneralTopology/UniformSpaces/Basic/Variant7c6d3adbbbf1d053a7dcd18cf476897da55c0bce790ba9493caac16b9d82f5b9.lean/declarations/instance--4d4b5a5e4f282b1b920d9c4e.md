# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:375a914f0130c0ee2df42392c79c8889086685385cab5364578a9ea677adaf03",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4d4b5a5e4f282b1b920d9c4e",
  "source": {
    "blob": "e0505f4c40fa377aa97d85a26c412b9decac6dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d4b5a5e4f282b1b920d9c4e3a44b732d15e8f68ba5bb063c030a3702522968e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:375a914f0130c0ee2df42392c79c8889086685385cab5364578a9ea677adaf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (UniformSpace α) :=
  { inferInstanceAs (PartialOrder (UniformSpace α)) with
    sup := fun a b => sInf { x | a ≤ x ∧ b ≤ x }
    le_sup_left := fun _ _ => UniformSpace.le_sInf fun _ ⟨h, _⟩ => h
    le_sup_right := fun _ _ => UniformSpace.le_sInf fun _ ⟨_, h⟩ => h
    sup_le := fun _ _ _ h₁ h₂ => UniformSpace.sInf_le ⟨h₁, h₂⟩
    inf := (· ⊓ ·)
    le_inf := fun a _ _ h₁ h₂ => show a.uniformity ≤ _ from le_inf h₁ h₂
    inf_le_left := fun a _ => show _ ≤ a.uniformity from inf_le_left
    inf_le_right := fun _ b => show _ ≤ b.uniformity from inf_le_right
    top := ⊤
    le_top := fun a => show a.uniformity ≤ ⊤ from le_top
    bot := ⊥
    bot_le := fun u => u.toCore.refl
    sSup := fun tt => sInf { t | ∀ t' ∈ tt, t' ≤ t }
    le_sSup := fun _ _ h => UniformSpace.le_sInf fun _ h' => h' _ h
    sSup_le := fun _ _ h => UniformSpace.sInf_le h
    sInf := sInf
    le_sInf := fun _ _ hs => UniformSpace.le_sInf hs
    sInf_le := fun _ _ ha => UniformSpace.sInf_le ha }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0505f4c40fa377aa97d85a26c412b9decac6dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
