# PresentationSelfAnnealCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:288ff40c422646067eca1385f6ce8d0f8e3a21e02b216e4fa962f2150051bbe4",
  "kind": "structure",
  "lexical_name": "PresentationSelfAnnealCertificate",
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
  "slug": "presentationselfannealcertificate--5e235a7f292b1de830569fdf",
  "source": {
    "blob": "bbfcaca9fcc5fee51fc6f8aece31ac5d3b9d6aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant4e73987cd9aacd7f30899376e800d1a3e898acfa4e2297e0ee8f6a97f85923c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e235a7f292b1de830569fdf8c0bf2fdb7e9e33dc8c851547bd6c91a2440fd62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant4e73987cd9aacd7f30899376e800d1a3e898acfa4e2297e0ee8f6a97f85923c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:288ff40c422646067eca1385f6ce8d0f8e3a21e02b216e4fa962f2150051bbe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PresentationSelfAnnealCertificate where
  snapshot : LeanAstSnapshot
  events : List PresentationUseEvent
  organization : TheoremOrganization
  trace : CompileTimeAnnealReducerTrace
  optimality : CompileTimeOptimalityWitness
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved

/-- Soundness statement for the finite compile-time self-annealer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant4e73987cd9aacd7f30899376e800d1a3e898acfa4e2297e0ee8f6a97f85923c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant4e73987cd9aacd7f30899376e800d1a3e898acfa4e2297e0ee8f6a97f85923c7.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbfcaca9fcc5fee51fc6f8aece31ac5d3b9d6aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
