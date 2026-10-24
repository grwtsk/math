# represent_phase_linear_ker_eq_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f322f80-6ce9-5d2a-b456-5375cab10f91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:282794ce-ce7b-026b-344c-cbaee6959fb7",
  "kind": "theorem",
  "lexical_name": "represent_phase_linear_ker_eq_jacobson",
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
  "slug": "represent-phase-linear-ker-eq-jacobson--be6d90be8bad26cacda85c8d",
  "source": {
    "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 574,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be6d90be8bad26cacda85c8d7d2d592bb05db93c0a7cc33e4eed23e359d53ad6",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:282794ce-ce7b-026b-344c-cbaee6959fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem represent_phase_linear_ker_eq_jacobson (χ : ℂ) (hχ : Complex.normSq χ = 1) :
    LinearMap.ker (representPhase χ hχ).toLinearMap =
      (Ring.jacobson (CharacteristicFiber (χ.re : ℂ))).restrictScalars ℂ := by
  ext z
  rw [LinearMap.mem_ker]
  change representPhase χ hχ z = 0 ↔ z ∈ Ring.jacobson (CharacteristicFiber (χ.re : ℂ))
  rw [← represent_phase_ker_eq_jacobson χ hχ, RingHom.mem_ker]
  rfl

/-- The actual characteristic observations have affine radical fibers, at every unit phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6c104e6b5354e79ca906e8466fa9ee2172fcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
