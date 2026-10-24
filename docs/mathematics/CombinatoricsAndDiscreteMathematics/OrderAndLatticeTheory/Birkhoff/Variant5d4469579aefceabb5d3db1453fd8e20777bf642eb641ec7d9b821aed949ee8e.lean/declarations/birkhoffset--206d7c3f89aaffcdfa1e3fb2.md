# birkhoffSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:847d1acc5109e79952b53288dd4523e5d7339c35edb308c8f3a370688bd7b575",
  "kind": "def",
  "lexical_name": "birkhoffSet",
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
  "slug": "birkhoffset--206d7c3f89aaffcdfa1e3fb2",
  "source": {
    "blob": "145fdba85d6105bb32f60f8ddc114dc118690e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:206d7c3f89aaffcdfa1e3fb20ad533eb814666e7151baf050ddf622c87921a45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:847d1acc5109e79952b53288dd4523e5d7339c35edb308c8f3a370688bd7b575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def birkhoffSet : α ↪o Set {a : α // SupIrred a} := by
  by_cases h : IsEmpty α
  · exact OrderEmbedding.ofIsEmpty
  rw [not_isEmpty_iff] at h
  have := Fintype.toOrderBot α
  exact OrderIso.lowerSetSupIrred.toOrderEmbedding.trans ⟨⟨_, SetLike.coe_injective⟩, Iff.rfl⟩

/-- **Birkhoff's Representation Theorem**. Any finite distributive lattice can be embedded in a
powerset lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145fdba85d6105bb32f60f8ddc114dc118690e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
