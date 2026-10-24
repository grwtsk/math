# ProblemIR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ef357eb535031ed7b920f3f94c501cd0432269e03b1d4ce34e906f4a6216aff",
  "kind": "structure",
  "lexical_name": "ProblemIR",
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
  "slug": "problemir--cfaeb5370c7421f61987f563",
  "source": {
    "blob": "1721779735a8f4d58436296f96602fb3c7d1c5ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Problem/Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfaeb5370c7421f61987f5637741f4eb8c0629e673b7f834c35c2e95aba1c244",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Problem/Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ef357eb535031ed7b920f3f94c501cd0432269e03b1d4ce34e906f4a6216aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProblemIR where
  problemId : StableId
  snapshotDigest : Digest
  sourceKind : ProblemSourceKind
  diagnosisAntichain : ExplanationFamily
  signature : MutationSignature
  violatedInvariants : Finset StableId
  affectedStrata : StratumSet
  jurisDisposition : JurisDisposition
  requiredTrust : Finset StableId
  availableRespectEvidence : Finset StableId
  authorityClass : Authority.EvidenceKind
  disposition : ProblemDisposition
  admissibleDischarges : Finset StableId
  requiredCertificates : Finset StableId
  nonclaims : List Nonclaim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Problem/Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Problem/Variant8ba8b637b48c54da7893303cbacdaa0430d43103c8a2363ff00c4f90292a4aab.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1721779735a8f4d58436296f96602fb3c7d1c5ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
