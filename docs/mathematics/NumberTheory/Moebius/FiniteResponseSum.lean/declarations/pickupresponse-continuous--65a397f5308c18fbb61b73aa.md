# pickupResponse_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf4ad4dc-68e4-8be3-4a37-e801c39c75c4",
  "kind": "theorem",
  "lexical_name": "pickupResponse_continuous",
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
  "slug": "pickupresponse-continuous--65a397f5308c18fbb61b73aa",
  "source": {
    "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a397f5308c18fbb61b73aa1a46cd7eb70413f94d9ed951f18c06b6a2f7796c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf4ad4dc-68e4-8be3-4a37-e801c39c75c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupResponse_continuous {n : ℕ} (hn : 1 ≤ n) :
    Continuous (pickupResponse n) := by
  apply Continuous.if_le
    (continuous_const.mul (continuous_const.sub
      (Real.continuous_exp.comp ((continuous_id.neg).div_const 2))))
    continuous_const continuous_const continuous_id
  intro u hu
  change Real.log (n : ℝ) = u at hu
  change 2 * ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) = 0
  rw [← hu, pickup_exp_negative_log_half hn]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
