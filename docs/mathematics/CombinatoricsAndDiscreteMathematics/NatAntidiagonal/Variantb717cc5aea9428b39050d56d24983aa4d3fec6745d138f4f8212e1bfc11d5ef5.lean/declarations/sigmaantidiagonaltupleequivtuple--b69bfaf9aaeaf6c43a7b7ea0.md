# sigmaAntidiagonalTupleEquivTuple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ce794e1444e5371e011e25634d339be822c49b717d31b1aee3330bfc065f87b",
  "kind": "def",
  "lexical_name": "sigmaAntidiagonalTupleEquivTuple",
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
  "slug": "sigmaantidiagonaltupleequivtuple--b69bfaf9aaeaf6c43a7b7ea0",
  "source": {
    "blob": "588f0ae76d7fb19284088b7e1bdd57144ad254d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 269,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b69bfaf9aaeaf6c43a7b7ea04f6bea9aedee40cec960aa5596e8d23fb8109489",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ce794e1444e5371e011e25634d339be822c49b717d31b1aee3330bfc065f87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaAntidiagonalTupleEquivTuple (k : ℕ) : (Σ n, antidiagonalTuple k n) ≃ (Fin k → ℕ)
    where
  toFun x := x.2
  invFun x := ⟨∑ i, x i, x, mem_antidiagonalTuple.mpr rfl⟩
  left_inv := fun ⟨_, _, h⟩ => Sigma.subtype_ext (mem_antidiagonalTuple.mp h) rfl
  right_inv _ := rfl
#align finset.nat.sigma_antidiagonal_tuple_equiv_tuple Finset.Nat.sigmaAntidiagonalTupleEquivTuple

end EquivProd

end Finset.Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `588f0ae76d7fb19284088b7e1bdd57144ad254d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
