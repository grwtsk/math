# identifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34f34c09efbd23f6ca99e8937aa151a3cb496553782795f712cd228d10f40b6f",
  "kind": "def",
  "lexical_name": "identifier",
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
  "slug": "identifier--51c7b5d3ab193a001200ab12",
  "source": {
    "blob": "fef5756cd204dc8705d99077f1e22c67f8017c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51c7b5d3ab193a001200ab12b4a7221b43706979c5aec297e9a359d2713b75cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34f34c09efbd23f6ca99e8937aa151a3cb496553782795f712cd228d10f40b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identifier : Project → String
  | .leanSemantics => "lean-semantics"
  | .cubicalAgdaArtifact => "cubical-agda-artifact"
  | .rustAuditImplementation => "rust-audit-implementation"
  | .providerAdapters => "provider-adapters"
  | .generatedEvidence => "generated-evidence"
  | .externalRuntime => "external-runtime"

/--
Source authority classifies the checked-in artifact.  It is distinct from the
authority of checking or executing that artifact.  Only source accepted by its
declared formal kernel is `certifiedSource`; implementation and adapter text is
declarative until an explicit certified refinement bridge is supplied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ownership/Variant62e1081a51dd4228e979868a12d63d58fc6529553bc850da9d1ff6eefaceade9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef5756cd204dc8705d99077f1e22c67f8017c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
