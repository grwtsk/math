# algebraMap₀_eq_smul_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e3891a-2a41-3f1f-8d1f-9bbdfcd16470",
  "kind": "theorem",
  "lexical_name": "algebraMap₀_eq_smul_one",
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
  "slug": "algebramap-eq-smul-one--4397942a3c39a4ef7e4157f0",
  "source": {
    "blob": "9ee1d1f78ae639d9f45edde0f9c8570f8bc1d0a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4397942a3c39a4ef7e4157f0a9f657493173b24e3fed532cd3d3f2ff8470c499",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e3891a-2a41-3f1f-8d1f-9bbdfcd16470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap₀_eq_smul_one (r : R) : (algebraMap₀ r : (⨂[R]^0) M) = r • ₜ1 := by
  simp [algebraMap₀]; congr
#align tensor_power.algebra_map₀_eq_smul_one TensorPower.algebraMap₀_eq_smul_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant17162deddd7e6fdd25af48ca05434efb1ff8ddfdd541ab6a42df5f3733e475e8.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ee1d1f78ae639d9f45edde0f9c8570f8bc1d0a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
