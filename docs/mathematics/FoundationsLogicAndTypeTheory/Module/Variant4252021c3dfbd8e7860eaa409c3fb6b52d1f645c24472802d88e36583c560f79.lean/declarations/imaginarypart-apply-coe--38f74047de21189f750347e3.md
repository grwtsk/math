# imaginaryPart_apply_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60d656b0-0ea8-09c6-c1c8-9f62b5534f60",
  "kind": "theorem",
  "lexical_name": "imaginaryPart_apply_coe",
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
  "slug": "imaginarypart-apply-coe--38f74047de21189f750347e3",
  "source": {
    "blob": "22f95c3f2f6c5c4b34d679d35a599cac8c2dcad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Module/Variant4252021c3dfbd8e7860eaa409c3fb6b52d1f645c24472802d88e36583c560f79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f74047de21189f750347e3b5f7c3a859d3b9dd84676fef6d009d183a3f474c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Module/Variant4252021c3dfbd8e7860eaa409c3fb6b52d1f645c24472802d88e36583c560f79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d656b0-0ea8-09c6-c1c8-9f62b5534f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imaginaryPart_apply_coe (a : A) : (ℑ a : A) = -I • (2 : ℝ)⁻¹ • (a - star a) := by
  unfold imaginaryPart
  simp only [LinearMap.coe_comp, Function.comp_apply, skewAdjoint.negISMul_apply_coe,
    skewAdjointPart_apply_coe, invOf_eq_inv, neg_smul]

/-- The standard decomposition of `ℜ a + Complex.I • ℑ a = a` of an element of a star module over
`ℂ` into a linear combination of self adjoint elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Module/Variant4252021c3dfbd8e7860eaa409c3fb6b52d1f645c24472802d88e36583c560f79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Module/Variant4252021c3dfbd8e7860eaa409c3fb6b52d1f645c24472802d88e36583c560f79.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f95c3f2f6c5c4b34d679d35a599cac8c2dcad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
