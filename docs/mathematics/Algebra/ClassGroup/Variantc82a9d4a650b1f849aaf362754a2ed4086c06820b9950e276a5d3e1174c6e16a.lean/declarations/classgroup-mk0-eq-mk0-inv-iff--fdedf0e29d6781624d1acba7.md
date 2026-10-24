# ClassGroup.mk0_eq_mk0_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dbaf265-4fad-aa3b-3bea-fa2e6d545d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1042db41-1f0d-2fd8-05ef-d7a0b8b9d482",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_eq_mk0_inv_iff",
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
  "slug": "classgroup-mk0-eq-mk0-inv-iff--fdedf0e29d6781624d1acba7",
  "source": {
    "blob": "02e5f881947fef2b44892ea2db997205708cabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 339,
    "path": "GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdedf0e29d6781624d1acba720b86660bf9b74d40a6c104ec44393b0dbd0c398",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1042db41-1f0d-2fd8-05ef-d7a0b8b9d482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_eq_mk0_inv_iff [IsDedekindDomain R] {I J : (Ideal R)⁰} :
    ClassGroup.mk0 I = (ClassGroup.mk0 J)⁻¹ ↔
      ∃ x ≠ (0 : R), I * J = Ideal.span {x} := by
  rw [eq_inv_iff_mul_eq_one, ← map_mul, ClassGroup.mk0_eq_one_iff,
    Submodule.isPrincipal_iff, Submonoid.coe_mul]
  refine ⟨fun ⟨a, ha⟩ ↦ ⟨a, ?_, ha⟩, fun ⟨a, _, ha⟩ ↦ ⟨a, ha⟩⟩
  by_contra!
  rw [this, Submodule.span_zero_singleton] at ha
  exact nonZeroDivisors.coe_ne_zero _ <| J.prop _ ha

/-- The class group of principal ideal domain is finite (in fact a singleton).

See `ClassGroup.fintypeOfAdmissibleOfFinite` for a finiteness proof that works for rings of integers
of global fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variantc82a9d4a650b1f849aaf362754a2ed4086c06820b9950e276a5d3e1174c6e16a.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02e5f881947fef2b44892ea2db997205708cabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
