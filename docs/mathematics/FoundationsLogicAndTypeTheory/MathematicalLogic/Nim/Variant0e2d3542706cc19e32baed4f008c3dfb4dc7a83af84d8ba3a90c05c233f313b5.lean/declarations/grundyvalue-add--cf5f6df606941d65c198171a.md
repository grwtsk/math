# grundyValue_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beda8a62-b93f-ab6b-9345-060040ed88a8",
  "kind": "theorem",
  "lexical_name": "grundyValue_add",
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
  "slug": "grundyvalue-add--cf5f6df606941d65c198171a",
  "source": {
    "blob": "b665e02e47979cb5543f833ef23e7cd9f5128c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf5f6df606941d65c198171a76992d0a3d612d86a9ead14e889dd6045672a32f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beda8a62-b93f-ab6b-9345-060040ed88a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grundyValue_add (G H : PGame) [G.Impartial] [H.Impartial] {n m : ℕ} (hG : grundyValue G = n)
    (hH : grundyValue H = m) : grundyValue (G + H) = Nat.lxor' n m := by
  rw [← nim_grundyValue (Nat.lxor' n m), grundyValue_eq_iff_equiv]
  refine' Equiv.trans _ nim_add_nim_equiv
  convert add_congr (equiv_nim_grundyValue G) (equiv_nim_grundyValue H) <;> simp only [hG, hH]
#align pgame.grundy_value_add SetTheory.PGame.grundyValue_add

end PGame
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant0e2d3542706cc19e32baed4f008c3dfb4dc7a83af84d8ba3a90c05c233f313b5.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b665e02e47979cb5543f833ef23e7cd9f5128c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
