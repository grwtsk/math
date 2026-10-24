# LocallyFiniteOrder.ofIcc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29b7f4cbf7faee3c6b7d88e0fe1f6241cb60b47e17d2d2862a7547660f9ff5c1",
  "kind": "def",
  "lexical_name": "LocallyFiniteOrder.ofIcc'",
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
  "slug": "locallyfiniteorder-oficc--6f813bc7cb28126b48a39548",
  "source": {
    "blob": "f96725699e76da75fd94812944584ffdbd104083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f813bc7cb28126b48a39548200f8d452e25463af23dc5ffa051d59e91052009",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29b7f4cbf7faee3c6b7d88e0fe1f6241cb60b47e17d2d2862a7547660f9ff5c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyFiniteOrder.ofIcc' (α : Type*) [Preorder α] [DecidableLE α]
    (finsetIcc : α → α → Finset α) (mem_Icc : ∀ a b x, x ∈ finsetIcc a b ↔ a ≤ x ∧ x ≤ b) :
    LocallyFiniteOrder α where
  finsetIcc := finsetIcc
  finsetIco a b := {x ∈ finsetIcc a b | ¬b ≤ x}
  finsetIoc a b := {x ∈ finsetIcc a b | ¬x ≤ a}
  finsetIoo a b := {x ∈ finsetIcc a b | ¬x ≤ a ∧ ¬b ≤ x}
  finset_mem_Icc := mem_Icc
  finset_mem_Ico a b x := by rw [Finset.mem_filter, mem_Icc, and_assoc, lt_iff_le_not_le]
  finset_mem_Ioc a b x := by rw [Finset.mem_filter, mem_Icc, and_right_comm, lt_iff_le_not_le]
  finset_mem_Ioo a b x := by
    rw [Finset.mem_filter, mem_Icc, and_and_and_comm, lt_iff_le_not_le, lt_iff_le_not_le]

/-- A constructor from a definition of `Finset.Icc` alone, the other ones being derived by removing
the ends. As opposed to `LocallyFiniteOrder.ofIcc'`, this one requires `PartialOrder` but only
`DecidableEq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant74309127bde30a5a7c829a1dd2ecc2d75dcf1c09c42a1dd0c4593bbe2f2e2d6d.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96725699e76da75fd94812944584ffdbd104083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
