# dualAnnihilator_gc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b6d956-aae7-e9fe-857d-d2f43d496261",
  "kind": "theorem",
  "lexical_name": "dualAnnihilator_gc",
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
  "slug": "dualannihilator-gc--49fcf33ab7528becd3144965",
  "source": {
    "blob": "ce8c0c13564ba1ba807ec00026f1affe6bbbcbe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant91686861e042dd8ae00426df10cfb0fc5bb66bca40c3d7289a609c9681a64bd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49fcf33ab7528becd3144965843127f3b443bd1e349548b62b56a5655e499236",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant91686861e042dd8ae00426df10cfb0fc5bb66bca40c3d7289a609c9681a64bd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b6d956-aae7-e9fe-857d-d2f43d496261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualAnnihilator_gc :
    GaloisConnection
      (OrderDual.toDual ∘ (dualAnnihilator : Submodule R M → Submodule R (Module.Dual R M)))
      (dualCoannihilator ∘ OrderDual.ofDual) := by
  intro a b
  induction b using OrderDual.rec
  simp only [Function.comp_apply, OrderDual.toDual_le_toDual, OrderDual.ofDual_toDual]
  constructor <;>
    · intro h x hx
      simp only [mem_dualAnnihilator, mem_dualCoannihilator]
      intro y hy
      have := h hy
      simp only [mem_dualAnnihilator, mem_dualCoannihilator] at this
      exact this x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant91686861e042dd8ae00426df10cfb0fc5bb66bca40c3d7289a609c9681a64bd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant91686861e042dd8ae00426df10cfb0fc5bb66bca40c3d7289a609c9681a64bd1.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8c0c13564ba1ba807ec00026f1affe6bbbcbe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
