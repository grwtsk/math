# parameter_four_slots_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:988882cc-af13-9454-c966-ff45e10d6b62",
  "kind": "theorem",
  "lexical_name": "parameter_four_slots_nodup",
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
  "slug": "parameter-four-slots-nodup--d0727d5f6a7d6c496648081d",
  "source": {
    "blob": "ecb49afd6d33aa39386906c536dcb72477b96bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0727d5f6a7d6c496648081d201322c015e4c9ed70e95c1f4cf8e4413dcb7aa9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988882cc-af13-9454-c966-ff45e10d6b62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parameter_four_slots_nodup (z : ℂ) (hre : z.re ≠ 0) (him : z.im ≠ 0) :
    List.Nodup [z, -z, conj z, -conj z] := by
  have h0 : z ≠ -z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re] at he
    apply hre
    linarith
  have h1 : z ≠ conj z := by
    intro h
    have he := congrArg Complex.im h
    simp only [Complex.conj_im] at he
    apply him
    linarith
  have h2 : z ≠ -conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  have h3 : -z ≠ conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  have h4 : -z ≠ -conj z := by
    intro h
    exact h1 (neg_inj.mp h)
  have h5 : conj z ≠ -conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  simp [h0, h1, h2, h3, h4, h5]

/-- A native off-line occurrence has four distinct partners, each keeping the same slot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb49afd6d33aa39386906c536dcb72477b96bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
