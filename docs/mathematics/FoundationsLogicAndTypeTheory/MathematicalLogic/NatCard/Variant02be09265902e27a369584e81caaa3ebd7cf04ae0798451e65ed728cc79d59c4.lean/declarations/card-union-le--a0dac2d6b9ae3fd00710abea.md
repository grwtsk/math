# card_union_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9f8390-5c8b-03af-0520-36b4f95fadb0",
  "kind": "theorem",
  "lexical_name": "card_union_le",
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
  "slug": "card-union-le--a0dac2d6b9ae3fd00710abea",
  "source": {
    "blob": "6cacfb9324ea28d0203f403d1fcbdcce474d8f3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0dac2d6b9ae3fd00710abea7dcfd247883981466ac7a6f0d46b64fb81ac1570",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9f8390-5c8b-03af-0520-36b4f95fadb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_union_le (s t : Set α) : Nat.card (↥(s ∪ t)) ≤ Nat.card s + Nat.card t := by
  rcases _root_.finite_or_infinite (↥(s ∪ t)) with h | h
  · rw [finite_coe_iff, finite_union, ← finite_coe_iff, ← finite_coe_iff] at h
    cases h
    rw [← @Nat.cast_le Cardinal, Nat.cast_add, Nat.cast_card, Nat.cast_card, Nat.cast_card]
    exact Cardinal.mk_union_le s t
  · simp

namespace Finite

variable {s t : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NatCard/Variant02be09265902e27a369584e81caaa3ebd7cf04ae0798451e65ed728cc79d59c4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cacfb9324ea28d0203f403d1fcbdcce474d8f3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
