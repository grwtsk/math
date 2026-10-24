# source_hfn_eq_bilateral_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abde3693-8e18-3db4-1125-a697c6b0d5ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d30fe032-e703-f9fc-7c15-5cb348778aa0",
  "kind": "theorem",
  "lexical_name": "source_hfn_eq_bilateral_laplace",
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
  "slug": "source-hfn-eq-bilateral-laplace--b13dcb41732744c8e0456d80",
  "source": {
    "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13dcb41732744c8e0456d801f78a42a02df3def32d81408c3367ee86405bcb1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d30fe032-e703-f9fc-7c15-5cb348778aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_hfn_eq_bilateral_laplace (A : ℝ) (z : ℂ) :
    Zeta23.WeilEF.Hfn (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))
      (z + 1 / 2) = sourceLaplace A z := by
  unfold Zeta23.WeilEF.Hfn Zeta23.paperFT sourceLaplace bilateralLaplace
  apply integral_congr_ae
  filter_upwards [] with t
  congr 2
  field_simp
  ring

/-- Positive-exponential weighting gives the real-frequency transform of the tilted source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a57a121fdd90e4ae58266325ec0d15b05714d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
