# StructuralSemanticCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10b6b9d85eee6a1132032be007ec078300f54df240fdb94a3f28ba90aface01f",
  "kind": "structure",
  "lexical_name": "StructuralSemanticCertificate",
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
  "slug": "structuralsemanticcertificate--3d46a421f05b838e61ad2d73",
  "source": {
    "blob": "5eb42535db29f7fd3dfdd6d51ae2949021e5643a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d46a421f05b838e61ad2d73c8b304d9141c6301a00ad3d490597c5774340db9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10b6b9d85eee6a1132032be007ec078300f54df240fdb94a3f28ba90aface01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructuralSemanticCertificate
    (cut : EvidenceCut) where
  cutWellFormed : CutWellFormed cut
  normalizationSound : cut.normalizationCertificate.isSome
  candidateCoverageSound : cut.candidateCoverage.isSome
  tokenizationSound : cut.baseTokenization.isSome
  metadataTyped : Prop
  provenanceComplete : Prop
  contextsValid : Prop
  graphWellFormed : Prop
  snapshotBound : Prop
  replayInputsCanonical : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb42535db29f7fd3dfdd6d51ae2949021e5643a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
