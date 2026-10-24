# one_div_Gamma_eq_self_mul_one_div_Gamma_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9312a0b9-3870-2400-ecde-ff22a386ae99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4823172-4e7d-c6ee-737d-975376b171e1",
  "kind": "theorem",
  "lexical_name": "one_div_Gamma_eq_self_mul_one_div_Gamma_add_one",
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
  "slug": "one-div-gamma-eq-self-mul-one-div-gamma-add-one--d9f869d6679607152888d2de",
  "source": {
    "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 503,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9f869d6679607152888d2de5b7c41a9d09b384084405be76d647c2f082e1a3d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4823172-4e7d-c6ee-737d-975376b171e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_Gamma_eq_self_mul_one_div_Gamma_add_one (s : ℂ) :
    (Gamma s)⁻¹ = s * (Gamma (s + 1))⁻¹ := by
  rcases ne_or_eq s 0 with (h | rfl)
  · rw [Gamma_add_one s h, mul_inv, mul_inv_cancel_left₀ h]
  · rw [zero_add, Gamma_zero, inv_zero, zero_mul]

/-- The reciprocal of the Gamma function is differentiable everywhere
(including the points where Gamma itself is not). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795b650d48b4382711449f1728e1f1260a5828b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
