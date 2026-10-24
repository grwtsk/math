# pairedTerm_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce2e9b5b-bcd8-6366-c01d-491353a90a2a",
  "kind": "theorem",
  "lexical_name": "pairedTerm_hasDerivAt",
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
  "slug": "pairedterm-hasderivat--4f6453a292666f781179dda8",
  "source": {
    "blob": "e797546032d49fcb9ff863375e42cd03f4535046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f6453a292666f781179dda8ccc08475797fcecb12559713875edc1315df551b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce2e9b5b-bcd8-6366-c01d-491353a90a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n) (firstTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hlog := ContinuousResearch.CompensatedGammaProfile.log_argument_pos hx n
  have h := ((hasDerivAt_id x).div_const (a n)).sub
    (((hasDerivAt_id x).div_const (a n)).const_add 1 |>.log hlog.ne')
  change HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n)
    (1 / a n - (1 / a n) / (1 + x / a n)) x at h
  apply h.congr_deriv
  dsimp [firstTerm]
  have hax' : a n + x ≠ 0 := hax.ne'
  have hxap : x + a n ≠ 0 := by simpa only [add_comm] using hax'
  rw [show 1 + x / a n = (a n + x) / a n by field_simp]
  field_simp [ha.ne', hax', hxap]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt3/Variant26c93e53ad202a2c72d7fac15c2e9aae717c8e8c632de502c78556cca5c424f9.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e797546032d49fcb9ff863375e42cd03f4535046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
