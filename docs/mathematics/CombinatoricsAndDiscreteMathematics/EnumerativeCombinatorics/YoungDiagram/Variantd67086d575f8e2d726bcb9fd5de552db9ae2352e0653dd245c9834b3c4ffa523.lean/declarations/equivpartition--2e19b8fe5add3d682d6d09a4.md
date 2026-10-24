# equivPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af536b9da4d00dc5322fbc3f27edbc99c794d54e47acd8ee9a1c475626c644ef",
  "kind": "def",
  "lexical_name": "equivPartition",
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
  "slug": "equivpartition--2e19b8fe5add3d682d6d09a4",
  "source": {
    "blob": "ac23c7777b7fe62455d359a79c1cab5d0e7b8fe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e19b8fe5add3d682d6d09a42f5878fc146dd3a71f4b85a9c9594484bb505b97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af536b9da4d00dc5322fbc3f27edbc99c794d54e47acd8ee9a1c475626c644ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivPartition {n : ℕ} : { μ : YoungDiagram // μ.card = n } ≃ Nat.Partition n where
  toFun μ := toPartition μ μ.2
  invFun p := ⟨ofPartition p, card_ofPartition p⟩
  left_inv := fun ⟨_, h⟩ => Subtype.mk_eq_mk.mpr (ofPartition_toPartition h)
  right_inv := fun _ => toPartition_ofPartition

end YoungDiagram

namespace Nat.Partition

/-- Conjugate a partition (equivalent to transposing its Young diagram). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/YoungDiagram/Variantd67086d575f8e2d726bcb9fd5de552db9ae2352e0653dd245c9834b3c4ffa523.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac23c7777b7fe62455d359a79c1cab5d0e7b8fe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
