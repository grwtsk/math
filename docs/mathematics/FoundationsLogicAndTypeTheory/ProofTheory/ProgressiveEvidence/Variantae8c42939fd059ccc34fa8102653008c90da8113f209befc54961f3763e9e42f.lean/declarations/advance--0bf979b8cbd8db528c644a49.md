# advance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91eaa249e9e7a1ef92297ca0b4eae14dd6d8ec0e9d2f6f28b7e6c16f0758480b",
  "kind": "def",
  "lexical_name": "advance",
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
  "slug": "advance--0bf979b8cbd8db528c644a49",
  "source": {
    "blob": "5302b388012a955b4e4971fc4021a9669f5c1181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ProgressiveEvidence/Variantae8c42939fd059ccc34fa8102653008c90da8113f209befc54961f3763e9e42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf979b8cbd8db528c644a497fb3d0c7468ed38941b01dde1ae9ab45b714c226",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/ProgressiveEvidence/Variantae8c42939fd059ccc34fa8102653008c90da8113f209befc54961f3763e9e42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91eaa249e9e7a1ef92297ca0b4eae14dd6d8ec0e9d2f6f28b7e6c16f0758480b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def advance
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (level : AssuranceLevel)
    (_monotone : evidence.level.AtMost level)
    (materialization : MaterializationRule := .reference) :
    ProgressiveEvidence :=
  { identity
    level
    authority := evidence.authority
    evidenceClass := evidence.evidenceClass
    derivesFrom := evidence.identity :: evidence.derivesFrom
    materialization
    source := some evidence.identity }

/-- Advancing assurance level never strengthens evidence authority. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/ProgressiveEvidence/Variantae8c42939fd059ccc34fa8102653008c90da8113f209befc54961f3763e9e42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ProgressiveEvidence/Variantae8c42939fd059ccc34fa8102653008c90da8113f209befc54961f3763e9e42f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5302b388012a955b4e4971fc4021a9669f5c1181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
