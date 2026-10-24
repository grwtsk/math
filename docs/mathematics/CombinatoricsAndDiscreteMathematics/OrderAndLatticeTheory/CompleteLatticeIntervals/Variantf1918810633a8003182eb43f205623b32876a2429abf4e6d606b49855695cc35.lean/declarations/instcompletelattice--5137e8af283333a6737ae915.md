# instCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b876f091cd018ce3c62d6c49aee23b2d5495c6dcea0b5453ffe095f333d4d56a",
  "kind": "instance",
  "lexical_name": "instCompleteLattice",
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
  "slug": "instcompletelattice--5137e8af283333a6737ae915",
  "source": {
    "blob": "3a5d6800638c1b56336570fd0e6dbf6c24dd8e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf1918810633a8003182eb43f205623b32876a2429abf4e6d606b49855695cc35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5137e8af283333a6737ae9155522701f1c4b55a358f4f6a0cfbe9bb522f2e655",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf1918810633a8003182eb43f205623b32876a2429abf4e6d606b49855695cc35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b876f091cd018ce3c62d6c49aee23b2d5495c6dcea0b5453ffe095f333d4d56a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteLattice : CompleteLattice (Iic a) where
  sSup S := ⟨sSup ((↑) '' S), by simpa using fun b hb _ ↦ hb⟩
  sInf S := ⟨a ⊓ sInf ((↑) '' S), by simp⟩
  isLUB_sSup _ := .of_image Subtype.coe_le_coe (isLUB_sSup _)
  isGLB_sInf _ :=
    ⟨fun _ hb ↦ inf_le_of_right_le <| sInf_le <| mem_image_of_mem Subtype.val hb,
      fun b hb ↦ le_inf_iff.mpr ⟨b.property, le_sInf fun _ ⟨_, hd, hd'⟩ ↦ hd' ▸ hb hd⟩⟩
  le_top := by simp
  bot_le := by simp

variable (S : Set <| Iic a) (f : ι → Iic a) (p : ι → Prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf1918810633a8003182eb43f205623b32876a2429abf4e6d606b49855695cc35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variantf1918810633a8003182eb43f205623b32876a2429abf4e6d606b49855695cc35.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5d6800638c1b56336570fd0e6dbf6c24dd8e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
