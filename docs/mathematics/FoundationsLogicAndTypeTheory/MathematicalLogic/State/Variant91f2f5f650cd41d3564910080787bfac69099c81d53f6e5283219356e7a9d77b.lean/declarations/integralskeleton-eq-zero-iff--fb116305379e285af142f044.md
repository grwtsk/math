# integralSkeleton_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:071943b1-32e1-866c-c776-72e83a7f7bff",
  "kind": "theorem",
  "lexical_name": "integralSkeleton_eq_zero_iff",
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
  "slug": "integralskeleton-eq-zero-iff--fb116305379e285af142f044",
  "source": {
    "blob": "89dc2881615cc765314f73a5bbcc57c4eb535c08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant91f2f5f650cd41d3564910080787bfac69099c81d53f6e5283219356e7a9d77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb116305379e285af142f0447f9570c147be297b1b062449c68445a0280d6c4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant91f2f5f650cd41d3564910080787bfac69099c81d53f6e5283219356e7a9d77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:071943b1-32e1-866c-c776-72e83a7f7bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem integralSkeleton_eq_zero_iff
    {Object : Type u} {Probe : Type v}
    {encode : Object → BooleanPresheaf Probe}
    (state : CertifiedState encode) (probe : Probe) :
    integralSkeleton state probe = 0 ↔ state.1 probe = false := by
  cases h : state.1 probe <;> simp [integralSkeleton, boolToInt, h]

/-- Explicit finiteness evidence required before using the free direct sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant91f2f5f650cd41d3564910080787bfac69099c81d53f6e5283219356e7a9d77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant91f2f5f650cd41d3564910080787bfac69099c81d53f6e5283219356e7a9d77b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89dc2881615cc765314f73a5bbcc57c4eb535c08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
