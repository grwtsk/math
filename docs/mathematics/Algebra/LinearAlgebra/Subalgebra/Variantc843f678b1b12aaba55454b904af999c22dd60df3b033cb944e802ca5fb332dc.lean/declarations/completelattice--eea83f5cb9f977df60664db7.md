# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09af142c874ce9d0c904bb19f03b350b2be31a4c4294719f6ab5a48ce08e1ee3",
  "kind": "instance",
  "lexical_name": "completeLattice",
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
  "slug": "completelattice--eea83f5cb9f977df60664db7",
  "source": {
    "blob": "f59bcc61020d6cc33cb77646444b1ea407ed2bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 487,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eea83f5cb9f977df60664db77e2f28dc49980c5b3247700608c60517fae834f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09af142c874ce9d0c904bb19f03b350b2be31a4c4294719f6ab5a48ce08e1ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeLattice : CompleteLattice (LieSubalgebra R L) :=
  { completeLatticeOfInf _ sInf_glb with
    bot := ⊥
    bot_le := fun N _ h ↦ by
      rw [mem_bot] at h
      rw [h]
      exact N.zero_mem'
    top := ⊤
    le_top := fun _ _ _ ↦ trivial
    inf := (· ⊓ ·)
    le_inf := fun _ _ _ h₁₂ h₁₃ _ hm ↦ ⟨h₁₂ hm, h₁₃ hm⟩
    inf_le_left := fun _ _ _ ↦ And.left
    inf_le_right := fun _ _ _ ↦ And.right }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc843f678b1b12aaba55454b904af999c22dd60df3b033cb944e802ca5fb332dc.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f59bcc61020d6cc33cb77646444b1ea407ed2bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
