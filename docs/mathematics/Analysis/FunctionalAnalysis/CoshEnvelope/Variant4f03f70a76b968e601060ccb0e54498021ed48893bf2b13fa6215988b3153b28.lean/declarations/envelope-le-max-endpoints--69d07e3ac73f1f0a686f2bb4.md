# envelope_le_max_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2959866d-f7cc-fa51-a776-e8bf7ea51970",
  "kind": "theorem",
  "lexical_name": "envelope_le_max_endpoints",
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
  "slug": "envelope-le-max-endpoints--69d07e3ac73f1f0a686f2bb4",
  "source": {
    "blob": "5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d07e3ac73f1f0a686f2bb463e1c846f566e5edd6efa05e898db8aa4afff52a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2959866d-f7cc-fa51-a776-e8bf7ea51970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_le_max_endpoints {a A b : ℝ} (ha : 0 < a) (hA : A ∈ Icc a b) :
    envelope A ≤ max (envelope a) (envelope b) := by
  have hp : 0 < A := ha.trans_le hA.1
  have hb : 0 < b := hp.trans_le hA.2
  have hl := logEnvelope_convex.le_max_of_mem_Icc ha hb hA
  rw [logEnvelope_eq_log hp, logEnvelope_eq_log ha, logEnvelope_eq_log hb] at hl
  rcases le_max_iff.mp hl with h | h
  · exact (Real.log_le_log_iff (envelope_pos hp) (envelope_pos ha)).mp h |>.trans (le_max_left _ _)
  · exact (Real.log_le_log_iff (envelope_pos hp) (envelope_pos hb)).mp h |>.trans (le_max_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
