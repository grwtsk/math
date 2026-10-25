# ι_mul_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dcaa0bb-78b2-4cff-e123-adad8f55a890",
  "kind": "theorem",
  "lexical_name": "ι_mul_ι",
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
  "slug": "mul--39defc2bf2e4af2683d86dae",
  "source": {
    "blob": "15329a3b19f4ecf7bb8a5e1b32b6d009f5538726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39defc2bf2e4af2683d86daecd0966022e7232440bd267410fd5333ce99331cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dcaa0bb-78b2-4cff-e123-adad8f55a890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_mul_ι (r₁ r₂) : ι (0 : QuadraticForm R R) r₁ * ι (0 : QuadraticForm R R) r₂ = 0 := by
  rw [← mul_one r₁, ← mul_one r₂, ← smul_eq_mul r₁, ← smul_eq_mul r₂, LinearMap.map_smul,
    LinearMap.map_smul, smul_mul_smul_comm, ι_sq_scalar, QuadraticMap.zero_apply, RingHom.map_zero,
    smul_zero]

/-- The clifford algebra over a 1-dimensional vector space with 0 quadratic form is isomorphic to
the dual numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variant1a11ce1e97e5cc64d97174e42d9a066ded78631f33d78f4a974a4b97caa87ede.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15329a3b19f4ecf7bb8a5e1b32b6d009f5538726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
