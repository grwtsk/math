# countableSupClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:180c61c4f5bfbb8363ff847a6b008f83fdc5f9c5516afdf13acff30293c2e0dd",
  "kind": "def",
  "lexical_name": "countableSupClosure",
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
  "slug": "countablesupclosure--bf26098d2bfd3b59eeff04d8",
  "source": {
    "blob": "5c417fd39791090d1e049fbbf79221ab2c46fbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf26098d2bfd3b59eeff04d823a3ff61b3d73564d5045ddbf2e6c56afe771c13",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:180c61c4f5bfbb8363ff847a6b008f83fdc5f9c5516afdf13acff30293c2e0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def countableSupClosure : ClosureOperator (Set α) := .ofPred
  (fun s ↦ {a | ∃ (A : Set α) (_ : A ⊆ s) (_ : A.Nonempty) (_ : A.Countable), IsLUB A a})
  CountableSupClosed
  (fun s x hxs ↦ ⟨{x}, by grind, by simp, by simp, by simp⟩)
  (fun s ↦ by
    constructor
    intro A hA hA_ne hAc x hx
    choose B hB hB_ne hBc hB_lub using hA
    refine ⟨⋃ a : A, B a.2, by simp; grind, ?_, ?_, ?_⟩
    · obtain ⟨a, ha⟩ := hA_ne
      simp
      grind
    · have : Countable A := Set.countable_coe_iff.mpr hAc
      exact Set.countable_iUnion fun a ↦ hBc a.2
    · have : Nonempty A := Set.nonempty_coe_sort.mpr hA_ne
      rw [← isLUB_iUnion_iff_of_isLUB (u := fun a : A ↦ a.1) (fun a ↦ hB_lub a.2)]
      simpa)
  (fun s t (hst : s ⊆ t) ht a ⟨A, hAs, hA_ne, hA_c, hA_lub⟩ ↦
    ht.isLUB_mem A (hAs.trans hst) hA_ne hA_c _ hA_lub)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c417fd39791090d1e049fbbf79221ab2c46fbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
