# card_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:776f3acb-4210-5e5e-2987-dba3c0d0a6f5",
  "kind": "theorem",
  "lexical_name": "card_mono",
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
  "slug": "card-mono--6c7a928fc47730a33ffd485b",
  "source": {
    "blob": "d059817032a9818208e391e4e2f2577821e7c60b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c7a928fc47730a33ffd485b20cceff30521733fd90df4407a82aef65ce8f1d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:776f3acb-4210-5e5e-2987-dba3c0d0a6f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_mono {a : α} {P Q : Finpartition a} (h : P ≤ Q) : Q.parts.card ≤ P.parts.card := by
  classical
    have : ∀ b ∈ Q.parts, ∃ c ∈ P.parts, c ≤ b := fun b ↦ exists_le_of_le h
    choose f hP hf using this
    rw [← card_attach]
    refine' card_le_card_of_inj_on (fun b ↦ f _ b.2) (fun b _ ↦ hP _ b.2) fun b _ c _ h ↦ _
    exact
      Subtype.coe_injective
        (Q.disjoint.elim b.2 c.2 fun H ↦
          P.ne_bot (hP _ b.2) <| disjoint_self.1 <| H.mono (hf _ b.2) <| h.le.trans <| hf _ c.2)
#align finpartition.card_mono Finpartition.card_mono

variable [DecidableEq α] {a b c : α}

section Bind

variable {P : Finpartition a} {Q : ∀ i ∈ P.parts, Finpartition i}

/-- Given a finpartition `P` of `a` and finpartitions of each part of `P`, this yields the
finpartition of `a` obtained by juxtaposing all the subpartitions. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variante54e01830923efcc4e6bbb247738656637b3551c890e0f4fbf573541cceb52a9.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d059817032a9818208e391e4e2f2577821e7c60b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
