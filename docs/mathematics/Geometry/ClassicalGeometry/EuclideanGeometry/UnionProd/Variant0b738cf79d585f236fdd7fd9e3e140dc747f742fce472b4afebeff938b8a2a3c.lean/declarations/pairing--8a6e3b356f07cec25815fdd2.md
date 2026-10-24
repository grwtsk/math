# pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba789db61e5061e28213d4ccdb6dcb548a91701635d9f5d48f16fd281b685263",
  "kind": "def",
  "lexical_name": "pairing",
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
  "slug": "pairing--8a6e3b356f07cec25815fdd2",
  "source": {
    "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 653,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a6e3b356f07cec25815fdd2a9a74e91cbd69b745ee84619cf6863427770339c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba789db61e5061e28213d4ccdb6dcb548a91701635d9f5d48f16fd281b685263`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairing {m : ℕ} (k : Fin (m + 2)) (n : ℕ) :
    (Subcomplex.unionProd.{u} Λ[m + 1, k] ∂Δ[n]).Pairing :=
  if hk : k = Fin.last (m + 1) then
    (pairingCore (0 : Fin (m + 1)) n).pairing.op.ofIso
      (((stdSimplex.opIso _).symm ⊗ᵢ (stdSimplex.opIso _).symm) ≪≫
        Functor.Monoidal.μIso opFunctor _ _) (by
          dsimp
          rw [hk, Subcomplex.preimage_comp,
            Subcomplex.preimage_op_unionProd,
            Subcomplex.preimage_unionProd,
            op_boundary, op_horn, Fin.rev_zero])
  else
    (pairingCore.{u} (k.castPred hk) n).pairing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
