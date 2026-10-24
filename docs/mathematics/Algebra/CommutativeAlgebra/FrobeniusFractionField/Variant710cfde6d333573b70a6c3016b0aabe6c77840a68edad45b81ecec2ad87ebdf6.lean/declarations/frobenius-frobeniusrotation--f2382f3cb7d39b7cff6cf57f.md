# frobenius_frobeniusRotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0b11a32-6035-cefc-dafc-4ccb77fc84a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ac7748c-4571-cd57-93ca-7e8f49e9bbff",
  "kind": "theorem",
  "lexical_name": "frobenius_frobeniusRotation",
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
  "slug": "frobenius-frobeniusrotation--f2382f3cb7d39b7cff6cf57f",
  "source": {
    "blob": "7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 203,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2382f3cb7d39b7cff6cf57f5ffc0a1ffee356ad5f293831b208e12cfb352898",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ac7748c-4571-cd57-93ca-7e8f49e9bbff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobenius_frobeniusRotation {a₁ a₂ : 𝕎 k} (ha₁ : a₁.coeff 0 ≠ 0) (ha₂ : a₂.coeff 0 ≠ 0) :
    frobenius (frobeniusRotation p ha₁ ha₂) * a₁ = frobeniusRotation p ha₁ ha₂ * a₂ := by
  ext n
  rcases n with - | n
  · simp only [WittVector.mul_coeff_zero, WittVector.coeff_frobenius_charP, frobeniusRotation,
      frobeniusRotationCoeff]
    apply solution_spec' _ ha₁
  · simp only [nthRemainder_spec, WittVector.coeff_frobenius_charP, frobeniusRotationCoeff,
      frobeniusRotation]
    have :=
      succNthVal_spec' p n a₁ a₂ (fun i : Fin (n + 1) => frobeniusRotationCoeff p ha₁ ha₂ i.val)
        ha₁ ha₂
    simp only [frobeniusRotationCoeff, Fin.val_zero] at this
    convert this using 3
    apply TruncatedWittVector.ext
    intro i
    simp only [WittVector.coeff_truncateFun, WittVector.coeff_frobenius_charP]
    rfl

local notation "φ" => IsFractionRing.ringEquivOfRingEquiv (frobeniusEquiv p k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
