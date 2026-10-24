# TateShafarevichComponentCertificate.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2dc4ccb-929d-2cf2-1e35-6a901c5ca8ae",
  "kind": "theorem",
  "lexical_name": "TateShafarevichComponentCertificate.certifiedForBSD_of_fields",
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
  "slug": "tateshafarevichcomponentcertificate-certifiedforbsd-of-fields--c7e776feb6ffac24fdf8b9e1",
  "source": {
    "blob": "a1d77bddeb8ddb6ba3d5425b539bd321a5cabc70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 583,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e776feb6ffac24fdf8b9e1cc473d13aa5a099bec96dbb3b84f8b0cf0736e2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2dc4ccb-929d-2cf2-1e35-6a901c5ca8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TateShafarevichComponentCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (T : TateShafarevichComponentCertificate M S)
    (hsource :
      T.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    T.certifiedForBSD := by
  constructor
  · exact T.groupInterfaceCertified
  · constructor
    · exact T.finitenessCertified
    · constructor
      · exact T.finiteSelmerShaBridge
      · constructor
        · exact T.shaStatusSupplied
        · constructor
          · exact T.shaOrderMatchesSecondPartCertified
          · exact hsource

/--
The BSD-facing Tate-Shafarevich component exposes a theorem-grade finite
Selmer/Sha bridge, rather than only standalone group/order metadata.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Varianta6c120ab301a26671a0d158070ce97ffe306d38e48eb9de3d7f0d6cae8d5e52e.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d77bddeb8ddb6ba3d5425b539bd321a5cabc70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
