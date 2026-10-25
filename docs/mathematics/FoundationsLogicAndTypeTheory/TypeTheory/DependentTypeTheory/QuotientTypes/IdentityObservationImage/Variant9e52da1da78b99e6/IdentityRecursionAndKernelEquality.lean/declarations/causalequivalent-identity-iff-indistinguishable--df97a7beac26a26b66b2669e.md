# causalEquivalent_identity_iff_indistinguishable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90d9d454-68d3-8e4c-ef67-4c5ad41aed38",
  "kind": "theorem",
  "lexical_name": "causalEquivalent_identity_iff_indistinguishable",
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
  "slug": "causalequivalent-identity-iff-indistinguishable--df97a7beac26a26b66b2669e",
  "source": {
    "blob": "ed5b1c74270c7b59198663110ce615a457cf2ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/IdentityObservationImage/Variant9e52da1da78b99e6/IdentityRecursionAndKernelEquality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df97a7beac26a26b66b2669e7269f7d2c115818df8484ace7c54a5b79c8461cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/IdentityObservationImage/Variant9e52da1da78b99e6/IdentityRecursionAndKernelEquality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90d9d454-68d3-8e4c-ef67-4c5ad41aed38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalEquivalent_identity_iff_indistinguishable
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (x y : State) :
    (quantizerIdentitySystem Q).CausalEquivalent x y ↔
      Q.Indistinguishable x y := by
  constructor
  · intro h
    change Q.encode x = Q.encode y
    exact h [] PUnit.unit
  · intro h inputs ρ
    rw [quantizerIdentitySystem_run, quantizerIdentitySystem_run]
    exact h


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/IdentityObservationImage/Variant9e52da1da78b99e6/IdentityRecursionAndKernelEquality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/IdentityObservationImage/Variant9e52da1da78b99e6/IdentityRecursionAndKernelEquality.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5b1c74270c7b59198663110ce615a457cf2ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
