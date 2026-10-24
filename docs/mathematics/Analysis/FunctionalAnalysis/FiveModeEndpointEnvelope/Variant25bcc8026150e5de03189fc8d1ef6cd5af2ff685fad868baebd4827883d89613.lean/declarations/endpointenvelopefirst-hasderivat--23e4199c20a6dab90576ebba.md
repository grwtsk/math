# endpointEnvelopeFirst_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dd9aad1-0431-ab79-8821-1c618a7dfb2d",
  "kind": "theorem",
  "lexical_name": "endpointEnvelopeFirst_hasDerivAt",
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
  "slug": "endpointenvelopefirst-hasderivat--23e4199c20a6dab90576ebba",
  "source": {
    "blob": "99466a3e5461282fdeb9d1e5e7753901ee0701a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e4199c20a6dab90576ebba672100e286fb7bce7052f1866d4edfc08b4aead8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd9aad1-0431-ab79-8821-1c618a7dfb2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointEnvelopeFirst_hasDerivAt (A : ℝ) (hA : A ≠ 0) :
    HasDerivAt endpointEnvelopeFirst (endpointEnvelopeSecond A) A := by
  unfold endpointEnvelopeFirst endpointEnvelopeSecond
  apply ((((Real.hasDerivAt_exp A).mul ((hasDerivAt_id A).sub_const 9)).sub_const 27).div
    ((hasDerivAt_id A).pow 10) (pow_ne_zero 10 hA)).congr_deriv
  simp only [Pi.pow_apply, Pi.mul_apply, id_eq]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiveModeEndpointEnvelope/Variant25bcc8026150e5de03189fc8d1ef6cd5af2ff685fad868baebd4827883d89613.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99466a3e5461282fdeb9d1e5e7753901ee0701a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
