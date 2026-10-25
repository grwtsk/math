# nsmul_pow_two_powHalf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d7dbe0-e584-a55d-d92e-1532d882e18f",
  "kind": "theorem",
  "lexical_name": "nsmul_pow_two_powHalf'",
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
  "slug": "nsmul-pow-two-powhalf--2f1408adf0a0cdfbb0139bf9",
  "source": {
    "blob": "31bee7f6e4d09206262936954590a9be38def46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f1408adf0a0cdfbb0139bf923a32a8739607d5fa3442fde61978c7750b45ab3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d7dbe0-e584-a55d-d92e-1532d882e18f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nsmul_pow_two_powHalf' (n k : ℕ) : 2 ^ n • powHalf (n + k) = powHalf k := by
  induction' k with k hk
  · simp only [add_zero, Surreal.nsmul_pow_two_powHalf, Nat.zero_eq, eq_self_iff_true,
      Surreal.powHalf_zero]
  · rw [← double_powHalf_succ_eq_powHalf (n + k), ← double_powHalf_succ_eq_powHalf k,
      smul_algebra_smul_comm] at hk
    rwa [← zsmul_eq_zsmul_iff' two_ne_zero]
#align surreal.nsmul_pow_two_pow_half' Surreal.nsmul_pow_two_powHalf'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bee7f6e4d09206262936954590a9be38def46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
