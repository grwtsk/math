# completelyDistribLatticeMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79f3e0b76bcdc42e9c0518638be68e43d3f46b352fd7030cfeeab785de95d550",
  "kind": "def",
  "lexical_name": "completelyDistribLatticeMinimalAxioms",
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
  "slug": "completelydistriblatticeminimalaxioms--7b56750bf99890cc3709da7a",
  "source": {
    "blob": "7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b56750bf99890cc3709da7a0204cc7a239b512401d4cb974f98147685798258",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79f3e0b76bcdc42e9c0518638be68e43d3f46b352fd7030cfeeab785de95d550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completelyDistribLatticeMinimalAxioms : CompletelyDistribLattice.MinimalAxioms G.Subgraph :=
  { Subgraph.distribLattice with
    le := (· ≤ ·)
    sup := (· ⊔ ·)
    inf := (· ⊓ ·)
    top := ⊤
    bot := ⊥
    le_top := fun G' => ⟨Set.subset_univ _, fun _ _ => G'.adj_sub⟩
    bot_le := fun _ => ⟨Set.empty_subset _, fun _ _ => False.elim⟩
    sSup := sSup
    -- Porting note: needed `apply` here to modify elaboration; previously the term itself was fine.
    le_sSup := fun s G' hG' => ⟨by apply Set.subset_iUnion₂ G' hG', fun _ _ hab => ⟨G', hG', hab⟩⟩
    sSup_le := fun s G' hG' =>
      ⟨Set.iUnion₂_subset fun _ hH => (hG' _ hH).1, by
        rintro a b ⟨H, hH, hab⟩
        exact (hG' _ hH).2 hab⟩
    sInf := sInf
    sInf_le := fun _ G' hG' => ⟨Set.iInter₂_subset G' hG', fun _ _ hab => hab.1 hG'⟩
    le_sInf := fun _ G' hG' =>
      ⟨Set.subset_iInter₂ fun _ hH => (hG' _ hH).1, fun _ _ hab =>
        ⟨fun _ hH => (hG' _ hH).2 hab, G'.adj_sub hab⟩⟩
    iInf_iSup_eq := fun f => Subgraph.ext (by simpa using iInf_iSup_eq)
      (by ext; simp [Classical.skolem]) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
