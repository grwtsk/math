# trace_eq_contract_of_basis'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1a41de7-78b5-ffa6-1c45-6fae876a019d",
  "kind": "theorem",
  "lexical_name": "trace_eq_contract_of_basis'",
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
  "slug": "trace-eq-contract-of-basis--585da57fec62fd6f9314f8ce",
  "source": {
    "blob": "9c5ee6a95e2c234648f4da4b64a127e2455d40c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:585da57fec62fd6f9314f8ce422cdb509fa59d406a5595bf9d20c24cee5ba5a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a41de7-78b5-ffa6-1c45-6fae876a019d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_eq_contract_of_basis' [Fintype ι] [DecidableEq ι] (b : Basis ι R M) :
    LinearMap.trace R M = contractLeft R M ∘ₗ (dualTensorHomEquivOfBasis b).symm.toLinearMap := by
  simp [LinearEquiv.eq_comp_toLinearMap_symm, trace_eq_contract_of_basis b]
#align linear_map.trace_eq_contract_of_basis' LinearMap.trace_eq_contract_of_basis'

variable (R M)

variable [Module.Free R M] [Module.Finite R M] [Module.Free R N] [Module.Finite R N]
  [Module.Free R P] [Module.Finite R P]

/-- When `M` is finite free, the trace of a linear map correspond to the contraction pairing under
the isomorphism `End(M) ≃ M* ⊗ M`-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5ee6a95e2c234648f4da4b64a127e2455d40c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
