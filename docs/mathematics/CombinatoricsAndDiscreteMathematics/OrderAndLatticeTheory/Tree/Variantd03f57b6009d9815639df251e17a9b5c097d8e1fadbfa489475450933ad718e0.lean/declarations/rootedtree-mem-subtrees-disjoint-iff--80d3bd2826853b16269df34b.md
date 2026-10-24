# RootedTree.mem_subtrees_disjoint_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df45ef91-ebc2-fc25-5a94-ad7183ef61da",
  "kind": "lemma",
  "lexical_name": "RootedTree.mem_subtrees_disjoint_iff",
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
  "slug": "rootedtree-mem-subtrees-disjoint-iff--80d3bd2826853b16269df34b",
  "source": {
    "blob": "48782d2e6baeb905f47b95a31507352d84872147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80d3bd2826853b16269df34b8c0b884cc8a5ad634cf252d1a3be50fec852efb1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df45ef91-ebc2-fc25-5a94-ad7183ef61da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RootedTree.mem_subtrees_disjoint_iff {t₁ t₂ : SubRootedTree t}
    (ht₁ : t₁ ∈ t.subtrees) (ht₂ : t₂ ∈ t.subtrees) (v₁ v₂ : t) (h₁ : v₁ ∈ t₁)
    (h₂ : v₂ ∈ t₂) :
    Disjoint v₁ v₂ ↔ t₁ ≠ t₂ where
  mp h := by
    intro nh
    have : t₁.root ≤ (v₁ : t) ⊓ (v₂ : t) := by
      simp only [le_inf_iff]
      exact ⟨h₁, nh ▸ h₂⟩
    rw [h.eq_bot] at this
    simp only [le_bot_iff] at this
    exact t₁.root_ne_bot_of_mem_subtrees ht₁ this
  mpr h := by
    rw [SubRootedTree.mem_iff] at h₁ h₂
    contrapose! h
    rw [disjoint_iff, ← ne_eq, ← bot_lt_iff_ne_bot] at h
    rcases lt_or_le_of_directed (by simp : v₁ ⊓ v₂ ≤ v₁) h₁ with oh | oh
    · simp_all [RootedTree.subtrees, IsAtom.lt_iff]
    rw [le_inf_iff] at oh
    ext
    simpa only [ht₂.le_iff_eq ht₁.1, ht₁.le_iff_eq ht₂.1, eq_comm, or_self] using
      le_total_of_directed oh.2 h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48782d2e6baeb905f47b95a31507352d84872147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
