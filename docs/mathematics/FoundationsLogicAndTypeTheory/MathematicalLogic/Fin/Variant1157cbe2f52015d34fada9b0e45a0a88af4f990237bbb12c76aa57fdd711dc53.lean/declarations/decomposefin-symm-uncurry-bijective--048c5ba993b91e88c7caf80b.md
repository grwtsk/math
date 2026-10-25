# decomposeFin'Symm_uncurry_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:089d464b-b531-df50-105b-c15ae249d980",
  "kind": "lemma",
  "lexical_name": "decomposeFin'Symm_uncurry_bijective",
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
  "slug": "decomposefin-symm-uncurry-bijective--048c5ba993b91e88c7caf80b",
  "source": {
    "blob": "cd5ef9c23015fad6c56281100d374fb674bdef3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 590,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:048c5ba993b91e88c7caf80b1f00bf8b57ccda6d1bd6a79448e3a6abc60345ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:089d464b-b531-df50-105b-c15ae249d980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma decomposeFin'Symm_uncurry_bijective :
    Function.Bijective (decomposeFin'Symm (n := n)).uncurry := by
  rw [Nat.bijective_iff_injective_and_card]
  refine ⟨fun ⟨i, σ⟩ ⟨i', σ'⟩ h ↦ ?_, ?_⟩
  · obtain rfl : i = i' := by simpa using DFunLike.congr_fun h 0
    obtain rfl : σ = σ' := by
      ext j : 1
      simpa using DFunLike.congr_fun h j.succ
    rfl
  · rw [Nat.card_prod, Nat.card_perm, Nat.card_perm, Nat.card_eq_fintype_card,
      Nat.card_eq_fintype_card, Fintype.card_fin, Fintype.card_fin,
      Nat.factorial_succ (n + 1)]

/-- A bijection between `Perm (Fin (n + 2))` and `Fin (n + 2) × Perm (Fin (n + 1))`.
The inverse map sends `⟨i, σ⟩` (with `i : Fin (n + 2)` and `σ : Perm (Fin (n + 1)`)
to `decomposeFin'Symm i σ` which sends `0` to `i` and `j.succ` to `i.succAbove (σ j)`.
(This bijection is slightly different from `Equiv.Perm.decomposeFin`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5ef9c23015fad6c56281100d374fb674bdef3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
