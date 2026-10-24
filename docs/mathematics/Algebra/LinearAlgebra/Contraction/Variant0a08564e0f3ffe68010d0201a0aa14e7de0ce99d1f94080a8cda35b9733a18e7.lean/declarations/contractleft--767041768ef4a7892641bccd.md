# contractLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0926b135c53ea7f1f508f0040d480d9fa16be22cd01c048b6121d358b93e031",
  "kind": "def",
  "lexical_name": "contractLeft",
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
  "slug": "contractleft--767041768ef4a7892641bccd",
  "source": {
    "blob": "bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:767041768ef4a7892641bccd5ac86fb39c9c6d8bacd1d65ea289279d6d29c91e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0926b135c53ea7f1f508f0040d480d9fa16be22cd01c048b6121d358b93e031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contractLeft : Module.Dual R M →ₗ[R] CliffordAlgebra Q →ₗ[R] CliffordAlgebra Q where
  toFun d := foldr' Q (contractLeftAux Q d) (contractLeftAux_contractLeftAux Q d) 0
  map_add' d₁ d₂ :=
    LinearMap.ext fun x => by
      dsimp only
      rw [LinearMap.add_apply]
      induction' x using CliffordAlgebra.left_induction with r x y hx hy m x hx
      · simp_rw [foldr'_algebraMap, smul_zero, zero_add]
      · rw [map_add, map_add, map_add, add_add_add_comm, hx, hy]
      · rw [foldr'_ι_mul, foldr'_ι_mul, foldr'_ι_mul, hx]
        dsimp only [contractLeftAux_apply_apply]
        rw [sub_add_sub_comm, mul_add, LinearMap.add_apply, add_smul]
  map_smul' c d :=
    LinearMap.ext fun x => by
      dsimp only
      rw [LinearMap.smul_apply, RingHom.id_apply]
      induction' x using CliffordAlgebra.left_induction with r x y hx hy m x hx
      · simp_rw [foldr'_algebraMap, smul_zero]
      · rw [map_add, map_add, smul_add, hx, hy]
      · rw [foldr'_ι_mul, foldr'_ι_mul, hx]
        dsimp only [contractLeftAux_apply_apply]
        rw [LinearMap.smul_apply, smul_assoc, mul_smul_comm, smul_sub]
#align clifford_algebra.contract_left CliffordAlgebra.contractLeft

/-- Contract an element of the clifford algebra with an element `d : Module.Dual R M` from the
right.

Note that $x ⌊ v$ is spelt `contractRight x (Q.associated v)`.

This includes [grinberg_clifford_2016][] Theorem 16.75 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
