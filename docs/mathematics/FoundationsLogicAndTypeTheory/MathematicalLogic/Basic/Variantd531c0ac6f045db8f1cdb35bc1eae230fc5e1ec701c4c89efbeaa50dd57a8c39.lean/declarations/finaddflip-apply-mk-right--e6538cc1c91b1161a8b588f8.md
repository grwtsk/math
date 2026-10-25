# finAddFlip_apply_mk_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c884b189-8636-f078-e266-05e7a7e2f076",
  "kind": "theorem",
  "lexical_name": "finAddFlip_apply_mk_right",
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
  "slug": "finaddflip-apply-mk-right--e6538cc1c91b1161a8b588f8",
  "source": {
    "blob": "1c5fbea9614d659794fbd68b911b9b8dadfea01d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 277,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6538cc1c91b1161a8b588f81ebeb8fd7089c5f5db9da9e119cb53cca4465fca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c884b189-8636-f078-e266-05e7a7e2f076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finAddFlip_apply_mk_right {k : ℕ} (h₁ : m ≤ k) (h₂ : k < m + n) :
    finAddFlip (⟨k, h₂⟩ : Fin (m + n)) = ⟨k - m, by omega⟩ := by
  convert @finAddFlip_apply_natAdd n ⟨k - m, by omega⟩ m
  simp [Nat.add_sub_cancel' h₁]

/-- Equivalence between `Fin m × Fin n` and `Fin (m * n)` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd531c0ac6f045db8f1cdb35bc1eae230fc5e1ec701c4c89efbeaa50dd57a8c39.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5fbea9614d659794fbd68b911b9b8dadfea01d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
