# lift_genericMonicPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d59547b-0c6f-bce1-3880-8efddfe78bc3",
  "kind": "theorem",
  "lexical_name": "lift_genericMonicPoly",
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
  "slug": "lift-genericmonicpoly--e06803fdb5551d57e63ec8aa",
  "source": {
    "blob": "7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06803fdb5551d57e63ec8aab4161421898da0d40430a3d8cbc79a7bf0c94ae5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d59547b-0c6f-bce1-3880-8efddfe78bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_genericMonicPoly [CommRing K] [Nontrivial K] {n : ℕ} (v : Fin (n + 1) → K) :
    FreeCommRing.lift v (genericMonicPoly n) =
    (((monicEquivDegreeLT n).trans (degreeLTEquiv K n).toEquiv).symm (v ∘ Fin.castSucc)).1.eval
      (v (Fin.last _)) := by
  simp only [genericMonicPoly, map_add, map_pow, lift_of, map_sum, map_mul, monicEquivDegreeLT,
    degreeLTEquiv, Equiv.symm_trans_apply, LinearEquiv.coe_toEquiv_symm, EquivLike.coe_coe,
    LinearEquiv.coe_symm_mk, Function.comp_apply, Equiv.coe_fn_symm_mk, eval_add, eval_pow, eval_X,
    eval_finset_sum, eval_monomial]

/-- A sentence saying every monic polynomial of degree `n` has a root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
