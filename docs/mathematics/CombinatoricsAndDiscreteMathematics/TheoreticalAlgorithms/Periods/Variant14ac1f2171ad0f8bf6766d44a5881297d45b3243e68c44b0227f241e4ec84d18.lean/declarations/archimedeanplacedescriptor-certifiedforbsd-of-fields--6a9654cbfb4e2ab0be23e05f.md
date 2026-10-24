# ArchimedeanPlaceDescriptor.certifiedForBSD_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12b5c530-1cb7-cff8-f13d-32d12fa634f7",
  "kind": "theorem",
  "lexical_name": "ArchimedeanPlaceDescriptor.certifiedForBSD_of_fields",
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
  "slug": "archimedeanplacedescriptor-certifiedforbsd-of-fields--6a9654cbfb4e2ab0be23e05f",
  "source": {
    "blob": "650b69126001d078176620c3167af06dd98d5ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a9654cbfb4e2ab0be23e05fd768f947d138bee2dfff46aabf07b5be391d231f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12b5c530-1cb7-cff8-f13d-32d12fa634f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchimedeanPlaceDescriptor.certifiedForBSD_of_fields
    {K : LawfulFieldLike.{u}}
    {N : NumberFieldCertificate K}
    (V : ArchimedeanPlaceDescriptor N)
    (hsource :
      V.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    V.certifiedForBSD := by
  constructor
  · exact V.embeddingDefinedOnBaseField
  · constructor
    · exact V.archimedeanPlaceCertified
    · constructor
      · exact V.compatibleWithNumberFieldCertificateCertified
      · exact hsource

/--
Invariant/Neron differential certificate for period data.

This is still an interface certificate. It does not construct the sheaf of
differentials or prove minimality of the Neron differential.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650b69126001d078176620c3167af06dd98d5ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
