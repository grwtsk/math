# distribLatticeOfSSupEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d26b2b1c327e85422c9df53b2b527a73a520016e3e8e15e7e8f1378ca617fd8f",
  "kind": "def",
  "lexical_name": "distribLatticeOfSSupEqTop",
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
  "slug": "distriblatticeofssupeqtop--e0a0c6398edd5ad69758c53c",
  "source": {
    "blob": "20f5e0c6fc9916a9b3005b78bdcc31b822773d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0a0c6398edd5ad69758c53c44cbf5d5bbe7b7cc980747d2df224997e42356d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d26b2b1c327e85422c9df53b2b527a73a520016e3e8e15e7e8f1378ca617fd8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def distribLatticeOfSSupEqTop (hS : BooleanGenerators S) (h : sSup S = ⊤) :
    DistribLattice α where
  le_sup_inf a b c := by
    obtain ⟨Ta, hTa, rfl⟩ := hS.atomistic a (h ▸ le_top)
    obtain ⟨Tb, hTb, rfl⟩ := hS.atomistic b (h ▸ le_top)
    obtain ⟨Tc, hTc, rfl⟩ := hS.atomistic c (h ▸ le_top)
    apply le_of_eq
    rw [← sSup_union, ← sSup_union, ← hS.sSup_inter hTb hTc, ← hS.sSup_inter, ← sSup_union]
    on_goal 1 => congr 1; ext
    all_goals
      simp only [Set.union_subset_iff, Set.mem_inter_iff, Set.mem_union]
      tauto

@[deprecated (since := "2026-07-18")]
alias distribLattice_of_sSup_eq_top := distribLatticeOfSSupEqTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Varianta59718c442a69d2f731515f27277f4ef3c5d5279c153caf61616aa9ba11c2a15.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f5e0c6fc9916a9b3005b78bdcc31b822773d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
