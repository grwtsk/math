# Pi.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ff3430080b8ace8d88e85c0abcb335b10997db1bad0e071c810b96c8490b29b",
  "kind": "instance",
  "lexical_name": "Pi.completeLattice",
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
  "slug": "pi-completelattice--5cef3fcc0b4bd1c0672de49a",
  "source": {
    "blob": "8363b653b736b9863138beaf762286e165208603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1757,
    "line": 1749,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cef3fcc0b4bd1c0672de49ab39e127c9e8ca69c497ec7d495c5e47f59cbccf0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ff3430080b8ace8d88e85c0abcb335b10997db1bad0e071c810b96c8490b29b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1749–1757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.completeLattice {α : Type*} {β : α → Type*} [∀ i, CompleteLattice (β i)] :
    CompleteLattice (∀ i, β i) :=
  { Pi.boundedOrder, Pi.lattice with
    le_sSup := fun s f hf i => le_iSup (fun f : s => (f : ∀ i, β i) i) ⟨f, hf⟩
    sInf_le := fun s f hf i => iInf_le (fun f : s => (f : ∀ i, β i) i) ⟨f, hf⟩
    sSup_le := fun _ _ hf i => iSup_le fun g => hf g g.2 i
    le_sInf := fun _ _ hf i => le_iInf fun g => hf g g.2 i }
#align pi.complete_lattice Pi.completeLattice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean#L1749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8363b653b736b9863138beaf762286e165208603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
