# mk_coe'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:753ea39f-1ab3-21a2-8f95-9be8d16a50d3",
  "kind": "theorem",
  "lexical_name": "mk_coe'",
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
  "slug": "mk-coe--56aff6d2a6b41a1b816c85ff",
  "source": {
    "blob": "a67f1a5d49325ef34b59d88ef902d485ff411c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 476,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56aff6d2a6b41a1b816c85ff84f60851faa92ab9bcfb29a9ea3a8c011bfae69f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753ea39f-1ab3-21a2-8f95-9be8d16a50d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_coe' (f h₁ h₂ h₃ h₄) :
    (LinearEquiv.mk ⟨⟨f, h₁⟩, h₂⟩ (⇑e) h₃ h₄ : M₂ ≃ₛₗ[σ'] M) = e.symm :=
  symm_bijective.injective <| ext fun _ ↦ rfl

/-- Auxiliary definition to avoid looping in `dsimp` with `LinearEquiv.symm_mk`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a67f1a5d49325ef34b59d88ef902d485ff411c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
