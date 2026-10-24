# norm_mem_nonZeroDivisors_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6fbfce6-4828-aaf8-b754-85a82ae13c66",
  "kind": "theorem",
  "lexical_name": "norm_mem_nonZeroDivisors_iff",
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
  "slug": "norm-mem-nonzerodivisors-iff--fe326450d56e17461ad153c0",
  "source": {
    "blob": "e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 357,
    "path": "GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe326450d56e17461ad153c0ca6b3c2ecc8e086b81cd0a86306ee4638c19ecdb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6fbfce6-4828-aaf8-b754-85a82ae13c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_mem_nonZeroDivisors_iff {z : QuadraticAlgebra R a b} :
    z.norm ∈ R⁰ ↔ z ∈ (QuadraticAlgebra R a b)⁰ := by
  constructor
  · simp only [mem_nonZeroDivisors_iff_right]
    intro h w hw
    have : norm z • w = 0 := by
      rw [← C_mul_eq_smul, C_eq_algebraMap, algebraMap_norm_eq_mul_star, mul_comm, ← mul_assoc, hw,
        zero_mul]
    simp only [QuadraticAlgebra.ext_iff, re_smul, smul_eq_mul, mul_comm, re_zero, im_smul,
      im_zero] at this
    ext <;> simp [h _ this.left, h _ this.right]
  · intro hz
    rw [← algebraMap_mem_nonZeroDivisors_iff, algebraMap_norm_eq_mul_star]
    exact Submonoid.mul_mem _ hz (star_mem_nonZeroDivisors hz)

end norm

section trace

variable [CommRing R]

attribute [local grind =] re_add im_add im_star re_star re_smul im_smul RingHom.id_apply
  algebraMap_re algebraMap_im

/-- The trace in a quadratic algebra, as an `R`-linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
