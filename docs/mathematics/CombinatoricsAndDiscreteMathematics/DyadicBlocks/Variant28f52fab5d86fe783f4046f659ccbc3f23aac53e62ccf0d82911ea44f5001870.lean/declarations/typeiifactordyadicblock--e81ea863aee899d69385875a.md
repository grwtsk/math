# typeIIFactorDyadicBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:121b1d37a446e8599a4571f03ede1eca7a3ddf3a593d8768bf0052cc54b79646",
  "kind": "def",
  "lexical_name": "typeIIFactorDyadicBlock",
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
  "slug": "typeiifactordyadicblock--e81ea863aee899d69385875a",
  "source": {
    "blob": "b294c29763f539c0dfc7f8b272ed1fcac98ba8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e81ea863aee899d69385875a3dc88f0c36033cf8078a32bc8596c0f553595eb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:121b1d37a446e8599a4571f03ede1eca7a3ddf3a593d8768bf0052cc54b79646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeIIFactorDyadicBlock {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    TypeIIDyadicBlock N where
  M := dyadicLowerEndpoint a.1.1.1
  K := dyadicLowerEndpoint a.1.2.1
  M_pos := dyadicLowerEndpoint_pos _
  K_pos := dyadicLowerEndpoint_pos _
  M_isPower := ⟨Nat.log2 (a.1.1.1 - 1), rfl⟩
  K_isPower := ⟨Nat.log2 (a.1.2.1 - 1), rfl⟩
  leftAboveCutoff := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hle := le_twice_dyadicLowerEndpoint
      hm
    exact a.2.2.1.trans_le hle
  rightAboveCutoff := by
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    have hle := le_twice_dyadicLowerEndpoint
      hk
    exact a.2.2.2.trans_le hle
  productRelevant := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    have hM := dyadicLowerEndpoint_lt hm
    have hK := dyadicLowerEndpoint_lt hk
    exact (Nat.mul_le_mul (Nat.le_of_lt hM) (Nat.le_of_lt hK)).trans a.2.1
  nonempty_effective := by
    have hm : 1 < a.1.1.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.1)
    have hk : 1 < a.1.2.1 :=
      (show 1 < 2 by decide).trans
        ((two_le_vaughanFourthRootCutoff N).trans_lt a.2.2.2)
    refine ⟨a.1.1, a.1.2, dyadicLowerEndpoint_lt hm,
      le_twice_dyadicLowerEndpoint hm,
      dyadicLowerEndpoint_lt hk,
      le_twice_dyadicLowerEndpoint hk,
      a.2.2.1, a.2.2.2, a.2.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b294c29763f539c0dfc7f8b272ed1fcac98ba8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
