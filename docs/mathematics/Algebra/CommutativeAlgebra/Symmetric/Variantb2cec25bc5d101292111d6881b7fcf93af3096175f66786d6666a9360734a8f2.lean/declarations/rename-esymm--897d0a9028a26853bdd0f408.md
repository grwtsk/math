# rename_esymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:906ca894-7876-8722-fc36-501b793249a0",
  "kind": "theorem",
  "lexical_name": "rename_esymm",
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
  "slug": "rename-esymm--897d0a9028a26853bdd0f408",
  "source": {
    "blob": "31a783c78c2dd71a1ec7ce3d520a74f9a83e197d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:897d0a9028a26853bdd0f4082ca3edb6a9b166b78054fed22be41054e68f42f8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:906ca894-7876-8722-fc36-501b793249a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rename_esymm (n : ℕ) (e : σ ≃ τ) : rename e (esymm σ R n) = esymm τ R n :=
  calc
    rename e (esymm σ R n) = ∑ x in powersetLen n univ, ∏ i in x, X (e i) := by
      simp_rw [esymm, map_sum, map_prod, rename_X]
    _ = ∑ t in powersetLen n (univ.map e.toEmbedding), ∏ i in t, X i := by
      simp [Finset.powersetLen_map, -Finset.map_univ_equiv]
      --Porting note: Why did `mapEmbedding_apply` not work?
      dsimp [mapEmbedding, OrderEmbedding.ofMapLEIff]
      simp
    _ = ∑ t in powersetLen n univ, ∏ i in t, X i := by rw [Finset.map_univ_equiv]
#align mv_polynomial.rename_esymm MvPolynomial.rename_esymm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variantb2cec25bc5d101292111d6881b7fcf93af3096175f66786d6666a9360734a8f2.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a783c78c2dd71a1ec7ce3d520a74f9a83e197d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
