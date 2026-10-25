# linearRangeProfile_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f0e2fd5-64a5-4833-6d98-dde3e0a0376e",
  "kind": "theorem",
  "lexical_name": "linearRangeProfile_integral",
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
  "slug": "linearrangeprofile-integral--ecd613b5bb4238c78c303c75",
  "source": {
    "blob": "2cfca2a41e9ce2bcf8e594b67e605a3df4a062ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt01/Variantd2f3615bc1d0b2c9fffb388767f526b9f7c18165d66fb92efdc0a7ead249a2b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd613b5bb4238c78c303c755c2fac9e7aa5094b57ada8a8efe4780a7509f974",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt01/Variantd2f3615bc1d0b2c9fffb388767f526b9f7c18165d66fb92efdc0a7ead249a2b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f0e2fd5-64a5-4833-6d98-dde3e0a0376e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearRangeProfile_integral (L u : ℝ) :
    (∫ t in 0..u,linearRangeProfile L t)=u^2/(2*L) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ=>t^2/2) t t := by
    convert ((hasDerivAt_id t).pow 2).div_const 2 using 1 <;> simp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _=>hd t) (continuous_id.intervalIntegrable (μ:=volume) 0 u)
  simp only [zero_pow (by norm_num : 2≠0),zero_div,sub_zero] at he
  unfold linearRangeProfile
  rw [intervalIntegral.integral_div,he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt01/Variantd2f3615bc1d0b2c9fffb388767f526b9f7c18165d66fb92efdc0a7ead249a2b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt01/Variantd2f3615bc1d0b2c9fffb388767f526b9f7c18165d66fb92efdc0a7ead249a2b2.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfca2a41e9ce2bcf8e594b67e605a3df4a062ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
