# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa520db6b87d6833b9116f4ef204e1eed296fef49c7474a2d36d56569fdb0699",
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
  "slug": "instance--d6df3cb42e3f76b2713e7735",
  "source": {
    "blob": "0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1242,
    "line": 1222,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6df3cb42e3f76b2713e7735afe271403d3dd60c543592557b6c7e4068370eb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa520db6b87d6833b9116f4ef204e1eed296fef49c7474a2d36d56569fdb0699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1222–1242.

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
    bot_le := fun u => u.refl
    sSup := fun tt => sInf { t | ∀ t' ∈ tt, t' ≤ t }
    le_sSup := fun _ _ h => UniformSpace.le_sInf fun _ h' => h' _ h
    sSup_le := fun _ _ h => UniformSpace.sInf_le h
    sInf := sInf
    le_sInf := fun _ _ hs => UniformSpace.le_sInf hs
    sInf_le := fun _ _ ha => UniformSpace.sInf_le ha }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean#L1222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
