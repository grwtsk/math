# SourceScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98411669c8e55f352592e40083bc77fc300f45ffc03d12de509f513f5636144e",
  "kind": "structure",
  "lexical_name": "SourceScope",
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
  "slug": "sourcescope--98b06f95e9a7008c86b6d1bd",
  "source": {
    "blob": "5181f5298833e1ef46fbb120dc5964fbaab72cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98b06f95e9a7008c86b6d1bde4f7e6c60dee0815afe9362f13c560d90e0f8a5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98411669c8e55f352592e40083bc77fc300f45ffc03d12de509f513f5636144e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceScope where
  /-- Declared source repository identity; verification performs no remote lookup. -/
  repository : String
  /-- Full lowercase Git commit spelling carried as provenance, not as a proof. -/
  commit : String
  /-- Full lowercase Git tree spelling binding the declared source content. -/
  tree : String
  /-- Name of the source target whose assumptions and records are being declared. -/
  target : String
  /-- Source-target revision; changing it changes exact whole-record scope. -/
  revision : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- Explicit quotas for finite semantic records and reference-check operations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5181f5298833e1ef46fbb120dc5964fbaab72cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
