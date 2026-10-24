# invQParam_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d53dbab-ff04-815a-052a-104b7c5184ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18b13bc5-d310-4017-e397-93ecc2d6229f",
  "kind": "theorem",
  "lexical_name": "invQParam_tendsto",
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
  "slug": "invqparam-tendsto--3dc491411b0ec41258621461",
  "source": {
    "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dc491411b0ec412586214611bd512fe346240e28418f8467ee3f31faf30c918",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18b13bc5-d310-4017-e397-93ecc2d6229f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invQParam_tendsto (hh : 0 < h) : Tendsto (invQParam h) (𝓝[≠] 0) I∞ := by
  simp only [tendsto_comap_iff, comp_def, im_invQParam]
  apply Tendsto.const_mul_atBot_of_neg (div_neg_of_neg_of_pos (neg_lt_zero.mpr hh) (by positivity))
  exact Real.tendsto_log_nhdsGT_zero.comp tendsto_norm_nhdsNE_zero

end qParam

section PeriodicOnℂ

variable (h : ℝ) (f : ℂ → ℂ)

/-- The function `q ↦ f (invQParam h q)`, extended by a non-canonical choice of limit at 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b4a25870dcedc2776f47194ba9a7324690266a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
