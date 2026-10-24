# opEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:101d23d9e648b0a859f2f092eedbc8bb9be6e229c531416542de53ad53b005c0",
  "kind": "def",
  "lexical_name": "opEquiv",
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
  "slug": "opequiv--0d6e49a1f0c8b5ce0931ed24",
  "source": {
    "blob": "ba170a2985400d9d1554ada3cc1904a074f7f9b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d6e49a1f0c8b5ce0931ed24d5cf1ea7b7f098e3e5002882b110ef1181bb1a83",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:101d23d9e648b0a859f2f092eedbc8bb9be6e229c531416542de53ad53b005c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opEquiv : X.op.PtSimplex n (opObjEquiv.symm x) ≃ X.PtSimplex n x where
  toFun f :=
    { map := yonedaEquiv.symm (opObjEquiv (yonedaEquiv f.map))
      comm := by
        obtain _ | n := n
        · ext
        · refine boundary.hom_ext (fun i ↦ ?_)
          simp [stdSimplex.δ_comp_yonedaEquiv_symm,
            δ_opObjEquiv, ← stdSimplex.yonedaEquiv_δ_comp,
            opObjEquiv_yonedaEquiv_const] }
  invFun g :=
    { map := yonedaEquiv.symm (opObjEquiv.symm (yonedaEquiv g.map))
      comm := by
        obtain _ | n := n
        · ext
        · refine boundary.hom_ext (fun i ↦ ?_)
          simp [stdSimplex.δ_comp_yonedaEquiv_symm, op_δ,
            ← stdSimplex.yonedaEquiv_δ_comp,
            opObjEquiv_symm_yonedaEquiv_const] }
  left_inv _ := by simp
  right_inv _ := by simp

/-- Given a `n`-simplex of `X` that is constant on the boundary, this
is the corresponding `n`-simplex of `X.op`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MulStruct/Variant020bf29526daa770ae10c05195f6a85d05e71d215c1ff05f76d346c918cefc23.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba170a2985400d9d1554ada3cc1904a074f7f9b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
