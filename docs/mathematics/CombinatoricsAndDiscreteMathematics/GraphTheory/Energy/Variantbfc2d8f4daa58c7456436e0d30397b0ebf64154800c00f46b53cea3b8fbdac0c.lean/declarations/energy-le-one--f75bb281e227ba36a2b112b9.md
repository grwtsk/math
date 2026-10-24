# energy_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f364c22-0f00-5890-5a0a-06c005f37107",
  "kind": "theorem",
  "lexical_name": "energy_le_one",
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
  "slug": "energy-le-one--f75bb281e227ba36a2b112b9",
  "source": {
    "blob": "cc844a1765b00a1b4776e517a00ac7bebed10baa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f75bb281e227ba36a2b112b993419116a163f9ec08fbb7ab2df867cf6706d143",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f364c22-0f00-5890-5a0a-06c005f37107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_le_one : P.energy G ≤ 1 :=
  div_le_of_nonneg_of_le_mul (sq_nonneg _) zero_le_one <|
    calc
      ∑ uv in P.parts.offDiag, G.edgeDensity uv.1 uv.2 ^ 2 ≤ P.parts.offDiag.card • (1 : ℚ) :=
        sum_le_card_nsmul _ _ 1 fun uv _ =>
          (sq_le_one_iff <| G.edgeDensity_nonneg _ _).2 <| G.edgeDensity_le_one _ _
      _ = P.parts.offDiag.card := (Nat.smul_one_eq_coe _)
      _ ≤ _ := by
        rw [offDiag_card, one_mul]
        norm_cast
        rw [sq]
        exact tsub_le_self
#align finpartition.energy_le_one Finpartition.energy_le_one

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variantbfc2d8f4daa58c7456436e0d30397b0ebf64154800c00f46b53cea3b8fbdac0c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc844a1765b00a1b4776e517a00ac7bebed10baa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
