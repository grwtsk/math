# idealProdEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62c66b1e3991b7839223681954484247106ea94caafddf74637d1a4904513f63",
  "kind": "def",
  "lexical_name": "idealProdEquiv",
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
  "slug": "idealprodequiv--d83a1d4c279cb9388f02afda",
  "source": {
    "blob": "035d669964876f96e42e8f8dcac67a297fb2aadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d83a1d4c279cb9388f02afda985bde3ebb24c5e0868b9a0e557b7853e772832f",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62c66b1e3991b7839223681954484247106ea94caafddf74637d1a4904513f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idealProdEquiv : Ideal (R × S) ≃o Ideal R × Ideal S where
  toFun I := ⟨map (RingHom.fst R S) I, map (RingHom.snd R S) I⟩
  invFun I := prod I.1 I.2
  left_inv I := (ideal_prod_eq I).symm
  right_inv := fun ⟨I, J⟩ => by simp
  map_rel_iff' {I J} := by
    simp only [Equiv.coe_fn_mk, ge_iff_le, Prod.mk_le_mk]
    refine ⟨fun h ↦ ?_, fun h ↦ ⟨map_mono h, map_mono h⟩⟩
    rw [ideal_prod_eq I, ideal_prod_eq J]
    exact inf_le_inf (comap_mono h.1) (comap_mono h.2)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variante891458fb58a5214f75af8c7d51c09c3b59e98560fd92c5587dff47ad4302c95.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035d669964876f96e42e8f8dcac67a297fb2aadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
