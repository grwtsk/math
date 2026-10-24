# iwasawaStructure_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af395ae716162472f6c4883792e7fb5b6885849f87af50387d801aea3b1e99bd",
  "kind": "def",
  "lexical_name": "iwasawaStructure_four",
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
  "slug": "iwasawastructure-four--84eb66841011776670e05c78",
  "source": {
    "blob": "559c14cd29c58e9ad50384b80e38536061fe0072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 161,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84eb66841011776670e05c7859e6a837af1dd1dfabf1018fb1559e48dbdb8e31",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af395ae716162472f6c4883792e7fb5b6885849f87af50387d801aea3b1e99bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def iwasawaStructure_four (h5 : 5 ≤ Nat.card α) :
    IwasawaStructure (alternatingGroup α) (Set.powersetCard α 4) where
  T s := (kleinFour s).map (ofSubtype s)
  is_comm s := by
    have : IsMulCommutative (kleinFour s) :=
      (kleinFour_isKleinFour (by simp)).isMulCommutative
    infer_instance
  is_conj g s := map_kleinFour_conj s.val s.prop g
  is_generator := by
    rw [eq_top_iff, ← closure_cycleType_eq_two_two_eq_top h5, Subgroup.closure_le]
    intro g hg
    simp only [Set.mem_ofPred_eq] at hg
    apply Subgroup.mem_iSup_of_mem ⟨(g : Perm α).support, by simp [← sum_cycleType, hg]⟩
    rw [mem_map_kleinFour_ofSubtype] <;> simp [hg, ← sum_cycleType]

/-- If `α` has at least 5 elements, but not 8,
then the only nontrivial normal subgroup of `alternatingGroup α`
is `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variantfadfb2a233019e85d0b5d8ae7ebda07d2e66d7aecbd4f08e262c6e88e43bf334.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559c14cd29c58e9ad50384b80e38536061fe0072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
