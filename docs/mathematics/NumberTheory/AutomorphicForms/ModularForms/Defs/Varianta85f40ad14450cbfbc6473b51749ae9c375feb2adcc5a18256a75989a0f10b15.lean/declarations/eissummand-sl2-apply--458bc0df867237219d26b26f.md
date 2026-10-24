# eisSummand_SL2_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e0c0e383301d9bb911acd9e29d4793cf9851f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a85f40ad14450cbfbc6473b51749ae9c375feb2adcc5a18256a75989a0f10b15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e468c01-3385-7717-f63b-44ff06e383d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32b667e9-89e0-189e-8d3c-7a2659beecd6",
  "kind": "theorem",
  "lexical_name": "eisSummand_SL2_apply",
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
  "slug": "eissummand-sl2-apply--458bc0df867237219d26b26f",
  "source": {
    "blob": "16e0c0e383301d9bb911acd9e29d4793cf9851f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Varianta85f40ad14450cbfbc6473b51749ae9c375feb2adcc5a18256a75989a0f10b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:458bc0df867237219d26b26f61f9ae6cc99be2ad0802a94413d96e7fd5f9cd51",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Varianta85f40ad14450cbfbc6473b51749ae9c375feb2adcc5a18256a75989a0f10b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b667e9-89e0-189e-8d3c-7a2659beecd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eisSummand_SL2_apply (k : ℤ) (i : (Fin 2 → ℤ)) (A : SL(2, ℤ)) (z : ℍ) :
    eisSummand k i (A • z) = (denom A z) ^ k * eisSummand k (i ᵥ* A) z := by
  simp only [eisSummand, vecMul, vec2_dotProduct, denom, UpperHalfPlane.specialLinearGroup_apply]
  have h (a b c d u v : ℂ) (hc : c * z + d ≠ 0) : (u * ((a * z + b) / (c * z + d)) + v) ^ (-k) =
      (c * z + d) ^ k * ((u * a + v * c) * z + (u * b + v * d)) ^ (-k) := by
    replace hc : z * c + d ≠ 0 := by convert! hc using 1; ring
    field_simp
    simp [div_zpow]
    ring_nf
  simpa using h (hc := denom_ne_zero A z) ..

end eisSummand

variable (a)

/-- An Eisenstein series of weight `k` and level `Γ(N)`, with congruence condition `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Varianta85f40ad14450cbfbc6473b51749ae9c375feb2adcc5a18256a75989a0f10b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Varianta85f40ad14450cbfbc6473b51749ae9c375feb2adcc5a18256a75989a0f10b15.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e0c0e383301d9bb911acd9e29d4793cf9851f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
