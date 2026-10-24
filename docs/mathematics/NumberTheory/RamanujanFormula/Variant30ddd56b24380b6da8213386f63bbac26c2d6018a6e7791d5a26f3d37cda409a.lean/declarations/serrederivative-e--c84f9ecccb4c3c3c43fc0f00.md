# serreDerivative_E₆

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "653c57c6be7cce24fd29629a58a15858ca38943f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a74debd-c806-f018-c331-c63e6147367f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b8a07a-c64f-456a-7f35-ba8a5f7aa16c",
  "kind": "theorem",
  "lexical_name": "serreDerivative_E₆",
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
  "slug": "serrederivative-e--c84f9ecccb4c3c3c43fc0f00",
  "source": {
    "blob": "653c57c6be7cce24fd29629a58a15858ca38943f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c84f9ecccb4c3c3c43fc0f00edbc461a54b56be8b0e8e4c84641f153066f23bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b8a07a-c64f-456a-7f35-ba8a5f7aa16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem serreDerivative_E₆ : serreDerivative 6 E₆ = (-2⁻¹ : ℂ) • E₄ ^ 2 :=
  have hlim : Tendsto (fun z ↦ E₄ z ^ 2) atImInfty (𝓝 1) := by
    simpa using (tendsto_E_atImInfty).pow 2
  coe_pow E₄ 2 ▸ serreDerivative_eq_smul (F := serreDerivativeMF 6 E₆) (g := E₄.pow 2) rfl
    (by simpa [Nat.ModEq] using dimension_level_one 8 ⟨4, rfl⟩) E₆.holo'
    tendsto_E_atImInfty hlim (by norm_num)

/-- The normalized derivative of the modular defect `D2 γ` is `-(γ₁₀)² / denom γ ²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653c57c6be7cce24fd29629a58a15858ca38943f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
