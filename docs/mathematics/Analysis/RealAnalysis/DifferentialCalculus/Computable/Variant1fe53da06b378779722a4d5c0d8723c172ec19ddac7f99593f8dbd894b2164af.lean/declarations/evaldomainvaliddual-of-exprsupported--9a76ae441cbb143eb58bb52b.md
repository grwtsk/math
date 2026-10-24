# evalDomainValidDual_of_ExprSupported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bee2d2b6-8f0d-0e47-2616-10d2a450afdb",
  "kind": "theorem",
  "lexical_name": "evalDomainValidDual_of_ExprSupported",
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
  "slug": "evaldomainvaliddual-of-exprsupported--9a76ae441cbb143eb58bb52b",
  "source": {
    "blob": "48946ce5b950b9ecdd33380adfc507b2693278e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a76ae441cbb143eb58bb52bb45ba1c8ba8dcd53d40543f4d4b88eae3d632fd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee2d2b6-8f0d-0e47-2616-10d2a450afdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDomainValidDual_of_ExprSupported (e : Expr) (hsupp : ExprSupported e)
    (ρ : DualEnv) (cfg : EvalConfig) : evalDomainValidDual e ρ cfg := by
  induction hsupp with
  | const _ => trivial
  | var _ => trivial
  | add _ _ ih₁ ih₂ => exact ⟨ih₁, ih₂⟩
  | mul _ _ ih₁ ih₂ => exact ⟨ih₁, ih₂⟩
  | neg _ ih => exact ih
  | sin _ ih => exact ih
  | cos _ ih => exact ih
  | exp _ ih => exact ih

/-- Correctness theorem for computable dual derivative component.
    Uses ExprSupported since derivative correctness requires differentiability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48946ce5b950b9ecdd33380adfc507b2693278e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
