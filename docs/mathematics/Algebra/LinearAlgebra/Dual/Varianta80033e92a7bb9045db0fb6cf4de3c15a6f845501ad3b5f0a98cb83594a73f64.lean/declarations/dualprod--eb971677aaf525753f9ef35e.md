# dualProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a4ef024af96f21bfc999f96de3498e183c04e78c568e3fcae3dfd8b93ed7593",
  "kind": "def",
  "lexical_name": "dualProd",
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
  "slug": "dualprod--eb971677aaf525753f9ef35e",
  "source": {
    "blob": "28d212c6b6db64a7a65a3102691c5cd1ab5341fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb971677aaf525753f9ef35e7a60572fa2abcf43c390c69438ba4a40d9fee4ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a4ef024af96f21bfc999f96de3498e183c04e78c568e3fcae3dfd8b93ed7593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dualProd : QuadraticForm R (Module.Dual R M × M) where
  toFun p := p.1 p.2
  toFun_smul a p := by
    rw [Prod.smul_fst, Prod.smul_snd, LinearMap.smul_apply, LinearMap.map_smul, smul_eq_mul,
      smul_eq_mul, smul_eq_mul, mul_assoc]
  exists_companion' :=
    ⟨LinearMap.dualProd R M, fun p q => by
      rw [LinearMap.dualProd_apply_apply, Prod.fst_add, Prod.snd_add, LinearMap.add_apply, map_add,
        map_add, add_right_comm _ (q.1 q.2), add_comm (q.1 p.2) (p.1 q.2), ← add_assoc, ←
        add_assoc]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d212c6b6db64a7a65a3102691c5cd1ab5341fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
