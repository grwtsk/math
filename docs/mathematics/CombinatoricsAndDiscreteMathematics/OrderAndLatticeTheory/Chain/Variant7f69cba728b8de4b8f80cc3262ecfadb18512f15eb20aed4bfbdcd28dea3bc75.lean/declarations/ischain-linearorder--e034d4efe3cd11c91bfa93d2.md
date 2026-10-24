# IsChain.linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30f1e558a87a98ecc34eb727dd83daa4cc5040f5132fad630be27df0f07080a1",
  "kind": "def",
  "lexical_name": "IsChain.linearOrder",
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
  "slug": "ischain-linearorder--e034d4efe3cd11c91bfa93d2",
  "source": {
    "blob": "8d448d7aa4fb05cd21153f463ba7df8f5e7dedca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant7f69cba728b8de4b8f80cc3262ecfadb18512f15eb20aed4bfbdcd28dea3bc75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e034d4efe3cd11c91bfa93d2a70b82dbd5776d8eccfae09096fbd5a6c707002d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant7f69cba728b8de4b8f80cc3262ecfadb18512f15eb20aed4bfbdcd28dea3bc75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30f1e558a87a98ecc34eb727dd83daa4cc5040f5132fad630be27df0f07080a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsChain.linearOrder [Preorder α] [DecidableLE α] {s : Set α} (hs : IsChain (· < ·) s) :
    LinearOrder s where
  le_antisymm :=
    fun ⟨a, ha⟩ ⟨b, hb⟩ hab hba ↦
      Subtype.ext <| not_not.mp (hs ha hb · |>.elim hba.not_gt hab.not_gt)
  le_total :=
    fun ⟨a, ha⟩ ⟨b, hb⟩ ↦ eq_or_ne a b |>.elim (by simp [·]) (hs ha hb · |>.imp (·.le) (·.le))
  toDecidableLE x y := inferInstanceAs (Decidable (x.1 ≤ y.1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant7f69cba728b8de4b8f80cc3262ecfadb18512f15eb20aed4bfbdcd28dea3bc75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant7f69cba728b8de4b8f80cc3262ecfadb18512f15eb20aed4bfbdcd28dea3bc75.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d448d7aa4fb05cd21153f463ba7df8f5e7dedca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
