# actual_pickup_right_line_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d88c131709ce62b90d1893e64e1281af26f4f6f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/NumberTheory/Zeta/ResponseBoundZeroConversions.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:808dd7cf-c532-ebac-e027-acdaada69624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "d88c131709ce62b90d1893e64e1281af26f4f6f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ResponseBoundZeroConversions.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fab17e9-0880-ec42-5975-070a3f5772ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f93c1054-c011-9f0d-2782-6fe7d7215c78",
  "kind": "theorem",
  "lexical_name": "actual_pickup_right_line_kernel",
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
  "slug": "actual-pickup-right-line-kernel--a92ba6711cdeae968dd2bcc1",
  "source": {
    "blob": "d88c131709ce62b90d1893e64e1281af26f4f6f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ResponseBoundZeroConversions/Variant6e75765bde4ba7a3abef3269833a2269f786cca39b4596f95eb81271fe2b76ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a92ba6711cdeae968dd2bcc112a4b0b174045200a42ed0a6e7ad31697cbbc6ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ResponseBoundZeroConversions/Variant6e75765bde4ba7a3abef3269833a2269f786cca39b4596f95eb81271fe2b76ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f93c1054-c011-9f0d-2782-6fe7d7215c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_pickup_right_line_kernel {c : ℝ} (hc : 1 < c) (t : ℝ) :
    FEMI.pickupLaplace ((c-1/2:ℝ)+t*Complex.I) = RightLine.pickupKernel c t := by
  apply FEMI.pickupLaplace_eq_reciprocal
  simp
  linarith

end EulerP04RH.CompleteReturn

#print axioms EulerP04RH.CompleteReturn.analyticClosure
#print axioms EulerP04RH.CompleteReturn.transform_route_implies_literal_RH
#print axioms EulerP04RH.CompleteReturn.original_AS_implies_literal_RH
#print axioms EulerP04RH.CompleteReturn.packet_route_implies_literal_RH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ResponseBoundZeroConversions/Variant6e75765bde4ba7a3abef3269833a2269f786cca39b4596f95eb81271fe2b76ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ResponseBoundZeroConversions/Variant6e75765bde4ba7a3abef3269833a2269f786cca39b4596f95eb81271fe2b76ae.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d88c131709ce62b90d1893e64e1281af26f4f6f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
