# jacobsonSpace_iff_locallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aa74df9-135c-8b9a-be46-672a9d4e76e8",
  "kind": "lemma",
  "lexical_name": "jacobsonSpace_iff_locallyClosed",
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
  "slug": "jacobsonspace-iff-locallyclosed--007b4fa03420eab6d7ee3c01",
  "source": {
    "blob": "a5df5a1e067c27728d3c917d1cdada5bde810fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:007b4fa03420eab6d7ee3c01d151ca3d1425904f64cc30525520d73deb3bcec2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa74df9-135c-8b9a-be46-672a9d4e76e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobsonSpace_iff_locallyClosed :
    JacobsonSpace X ↔ ∀ Z, Z.Nonempty → IsLocallyClosed Z → (Z ∩ closedPoints X).Nonempty := by
  rw [jacobsonSpace_iff]
  constructor
  · simp_rw [isLocallyClosed_iff_isOpen_coborder, coborder, isOpen_compl_iff,
      Set.nonempty_iff_ne_empty]
    intros H Z hZ hZ' e
    have : Z ⊆ closure Z \ Z := by
      refine subset_closure.trans ?_
      nth_rw 1 [← H isClosed_closure]
      rw [hZ'.closure_subset_iff, Set.subset_diff, Set.disjoint_iff, Set.inter_assoc,
        Set.inter_comm _ Z, e]
      exact ⟨Set.inter_subset_left, Set.inter_subset_right⟩
    rw [Set.subset_diff, disjoint_self, Set.bot_eq_empty] at this
    exact hZ this.2
  · intro H Z hZ
    refine subset_antisymm (hZ.closure_subset_iff.mpr Set.inter_subset_left) ?_
    rw [← Set.disjoint_compl_left_iff_subset, Set.disjoint_iff_inter_eq_empty,
      ← Set.not_nonempty_iff_eq_empty]
    intro H'
    have := H _ H' (isClosed_closure.isOpen_compl.isLocallyClosed.inter hZ.isLocallyClosed)
    rw [Set.nonempty_iff_ne_empty, Set.inter_assoc, ne_eq,
      ← Set.disjoint_iff_inter_eq_empty, Set.disjoint_compl_left_iff_subset] at this
    exact this subset_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4951bc716cd1cdd03f8ebe01f440be2310af1455b20f5dfe039874ec05cd75c9.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5df5a1e067c27728d3c917d1cdada5bde810fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
