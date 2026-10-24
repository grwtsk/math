# completeLatticeOfInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30f9086c4940585b6f254cbc03452195736630135848c986cf73bf619eff3f63",
  "kind": "def",
  "lexical_name": "completeLatticeOfInf",
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
  "slug": "completelatticeofinf--e4712e7dd1b79cba320d790b",
  "source": {
    "blob": "25ded1fcc6911842596498dabc0f4be401b59b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4712e7dd1b79cba320d790b35a9d43172d4f120951ccb9cf8c12ed16afdc91f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30f9086c4940585b6f254cbc03452195736630135848c986cf73bf619eff3f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeLatticeOfInf (α : Type*) [H1 : PartialOrder α] [H2 : InfSet α]
    (isGLB_sInf : ∀ s : Set α, IsGLB s (sInf s)) : CompleteLattice α :=
  { H1, H2 with
    bot := sInf univ
    bot_le := fun x => (isGLB_sInf univ).1 trivial
    top := sInf ∅
    le_top := fun a => (isGLB_sInf ∅).2 <| by simp
    sup := fun a b => sInf { x : α | a ≤ x ∧ b ≤ x }
    inf := fun a b => sInf {a, b}
    le_inf := fun a b c hab hac => by
      apply (isGLB_sInf _).2
      simp [*]
    inf_le_right := fun a b => (isGLB_sInf _).1 <| mem_insert_of_mem _ <| mem_singleton _
    inf_le_left := fun a b => (isGLB_sInf _).1 <| mem_insert _ _
    sup_le := fun a b c hac hbc => (isGLB_sInf _).1 <| by simp [*]
    le_sup_left := fun a b => (isGLB_sInf _).2 fun x => And.left
    le_sup_right := fun a b => (isGLB_sInf _).2 fun x => And.right
    le_sInf := fun s a ha => (isGLB_sInf s).2 ha
    sInf_le := fun s a ha => (isGLB_sInf s).1 ha
    sSup := fun s => sInf (upperBounds s)
    le_sSup := fun s a ha => (isGLB_sInf (upperBounds s)).2 fun b hb => hb ha
    sSup_le := fun s a ha => (isGLB_sInf (upperBounds s)).1 ha }
#align complete_lattice_of_Inf completeLatticeOfInf

/-- Any `CompleteSemilatticeInf` is in fact a `CompleteLattice`.

Note that this construction has bad definitional properties:
see the doc-string on `completeLatticeOfInf`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant6e72384945a7415982e9e3ec850691cb8b653efb31f2a93b3053b8d7db719bd2.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25ded1fcc6911842596498dabc0f4be401b59b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
