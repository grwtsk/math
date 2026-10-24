# estimate_of_signed_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d390de2-3ea5-1093-6da5-024767e3dcdc",
  "kind": "theorem",
  "lexical_name": "estimate_of_signed_certificate",
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
  "slug": "estimate-of-signed-certificate--979a14ec192e45a356d04ad0",
  "source": {
    "blob": "f56d4963403abb8bfb4034a06dcb8b532a914e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979a14ec192e45a356d04ad0d421458c0b322f8cddb7cd2972bd785a6238f74e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d390de2-3ea5-1093-6da5-024767e3dcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_signed_certificate (c : BoundCertificate)
    (hc : c.function = fun A ↦ -signedPairing explicitSecondDerivative A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_quadratic_tail_lower_bound
  refine ⟨-correction.constant - 2 * c.constant, c.radius, c.radius_one_le, ?_⟩
  intro A hA
  have hb := c.bound A hA
  rw [hc] at hb
  have hcorr := correction.bound A (by
    rw [correction_radius]
    exact c.radius_one_le.trans hA)
  rw [correction_function] at hcorr
  rw [CorrelationAssembly.source_arithmetic_representation A (c.radius_one_le.trans hA)]
  linarith

/-- Scoped proof of the first actual source contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceBoundCertificates/Variant54106c2a21f0174686c9003993f3f57b9455b192377296f782cdd40f7ea7fe08.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f56d4963403abb8bfb4034a06dcb8b532a914e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
