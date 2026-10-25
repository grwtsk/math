# matrixDyadicInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7678c37dfb5827c92733517ba737f0254d245e4d5625d3977886f977ee9788dc",
  "kind": "def",
  "lexical_name": "matrixDyadicInterval",
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
  "slug": "matrixdyadicinterval--b9cae5251cbe042c8b6f539a",
  "source": {
    "blob": "39dd5058274da910d9780ab0b559fec54a74f6e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 789,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9cae5251cbe042c8b6f539a81317fbe42fc3821ddcffc4ba98af06ba6f81191",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7678c37dfb5827c92733517ba737f0254d245e4d5625d3977886f977ee9788dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matrixDyadicInterval {N : ℕ} {Left Right : Type*}
    (matrix : ℕ → Matrix Left Right ℂ)
    (interval : TypeIIDyadicInterval N) : Matrix Left Right ℂ :=
  matrix interval.upper - matrixPrefixBefore matrix interval.lower

/-- Sum of squared cross-neck correlations over every internal surgery node
and every canonical dyadic prefix interval.

This is a recursively computed quantity, not a field of the structural
surgery data.  Flow nodes merely forward the energy to their child; surgery
nodes add their exact cross matrices and all child subtrees.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantad0423a330de707e474d2ddfefe8e599bd54dabb97b7ed149e36951a0b7dfbff.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dd5058274da910d9780ab0b559fec54a74f6e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
