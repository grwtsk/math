# PackedSmoothBSDTheoremInput.regulatorCanonicalHeightCompatibility_certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2488c9c-0728-0790-4026-dd586eef56e0",
  "kind": "theorem",
  "lexical_name": "PackedSmoothBSDTheoremInput.regulatorCanonicalHeightCompatibility_certifiedForBSD",
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
  "slug": "packedsmoothbsdtheoreminput-regulatorcanonicalheightcompatibility-certif--90dd3795ff0929d856cf046b",
  "source": {
    "blob": "502b3c662d953eca59b5f97d97e2c25385fc343b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2015,
    "line": 2001,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant28f03eeee909e640b490153e5be44c59a19807a68294f7533c0f25418a1acd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90dd3795ff0929d856cf046b20985dd8dc3821b0760a93aef77a7efb1261a9f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant28f03eeee909e640b490153e5be44c59a19807a68294f7533c0f25418a1acd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2488c9c-0728-0790-4026-dd586eef56e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2001–2015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PackedSmoothBSDTheoremInput.regulatorCanonicalHeightCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Qfg : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Qfg.certifiedForBSD ∧
      ∃ R : RegulatorCertificate P.input.smoothMW P.input.conjecture.second,
        R.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate
          P.input.smoothMW P.input.conjecture.second Qfg R,
          Q.certifiedForBSD :=
  P.input.regulatorCanonicalHeightCompatibility_certifiedForBSD

/--
The packed smooth BSD input carries Taylor-expansion/leading-coefficient
provenance for the second BSD part.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant28f03eeee909e640b490153e5be44c59a19807a68294f7533c0f25418a1acd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant28f03eeee909e640b490153e5be44c59a19807a68294f7533c0f25418a1acd5d.lean#L2001).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `502b3c662d953eca59b5f97d97e2c25385fc343b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
