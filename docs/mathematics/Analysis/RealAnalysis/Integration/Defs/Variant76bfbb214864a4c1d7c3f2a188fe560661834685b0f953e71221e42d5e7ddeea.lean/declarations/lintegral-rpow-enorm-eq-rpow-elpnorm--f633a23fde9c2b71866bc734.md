# lintegral_rpow_enorm_eq_rpow_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a10b72acc16a076f83b8b54b5acb2576ea8c25cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e92d1bc-226b-22b6-541f-af8d28809568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:164e9212-414a-e7f2-0d5c-6ab586b993af",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_enorm_eq_rpow_eLpNorm'",
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
  "slug": "lintegral-rpow-enorm-eq-rpow-elpnorm--f633a23fde9c2b71866bc734",
  "source": {
    "blob": "a10b72acc16a076f83b8b54b5acb2576ea8c25cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f633a23fde9c2b71866bc734ccad7eb54f08517018c05c67bd16bcf2c37fbc9c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164e9212-414a-e7f2-0d5c-6ab586b993af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_enorm_eq_rpow_eLpNorm' {f : α → ε} (hq0_lt : 0 < q) :
    ∫⁻ a, ‖f a‖ₑ ^ q ∂μ = eLpNorm' f q μ ^ q := by
  rw [eLpNorm'_eq_lintegral_enorm, ← ENNReal.rpow_mul, one_div, inv_mul_cancel₀, ENNReal.rpow_one]
  exact hq0_lt.ne'

@[deprecated (since := "2025-01-17")]
alias lintegral_rpow_nnnorm_eq_rpow_eLpNorm' := lintegral_rpow_enorm_eq_rpow_eLpNorm'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variant76bfbb214864a4c1d7c3f2a188fe560661834685b0f953e71221e42d5e7ddeea.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10b72acc16a076f83b8b54b5acb2576ea8c25cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
