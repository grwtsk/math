# Submodule.smithNormalFormOfRankEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b19a51035aa98e88f3c48e6687d0be3738b03890d2bcee29e42d320c49771b8",
  "kind": "def",
  "lexical_name": "Submodule.smithNormalFormOfRankEq",
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
  "slug": "submodule-smithnormalformofrankeq--c7c29fa06aa09a9afbee40b4",
  "source": {
    "blob": "fc285a3509f0c22967fcbadc00d031fefe15182e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 555,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7c29fa06aa09a9afbee40b45b3982777b188deb75941e8024f1765ad5663fb7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b19a51035aa98e88f3c48e6687d0be3738b03890d2bcee29e42d320c49771b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Submodule.smithNormalFormOfRankEq [Fintype ι] (b : Basis ι R M)
    (h : Module.finrank R N = Module.finrank R M) :
    Basis.SmithNormalForm N ι (Fintype.card ι) :=
  let ⟨n, bM, bN, f, a, snf⟩ := N.smithNormalForm b
  let e : Fin n ≃ Fin (Fintype.card ι) := Fintype.equivOfCardEq (by
    simp only [Fintype.card_fin, ← Module.finrank_eq_card_basis bM, ← h,
      Module.finrank_eq_card_basis bN])
  ⟨bM, bN.reindex e, e.symm.toEmbedding.trans f, a ∘ e.symm, fun i ↦ by
    simp only [snf, Basis.coe_reindex, Function.Embedding.trans_apply, Equiv.toEmbedding_apply,
      (· ∘ ·)]⟩

variable [Finite ι]

/--
If `M` is finite free over a PID `R`, then for any submodule `N` of the same rank,
we can find basis for `M` and `N` with the same indexing such that the inclusion map
is a square diagonal matrix.

See also `Submodule.smithNormalFormOfRankEq` for a version of this theorem that returns
a `Basis.SmithNormalForm`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant8d598b47f02aed4241122a2f88c132fce6b3a26776f24086a5d1d5acb7795aff.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc285a3509f0c22967fcbadc00d031fefe15182e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
