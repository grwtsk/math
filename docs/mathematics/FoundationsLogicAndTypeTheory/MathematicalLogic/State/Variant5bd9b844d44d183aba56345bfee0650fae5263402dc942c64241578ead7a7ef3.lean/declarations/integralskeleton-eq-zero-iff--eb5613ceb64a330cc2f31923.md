# integralSkeleton_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e17ead4b-6910-634c-8bf3-932b1c675b49",
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
  "slug": "integralskeleton-eq-zero-iff--eb5613ceb64a330cc2f31923",
  "source": {
    "blob": "87cd30d05dffbd0e73e617b1a125428636e10839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb5613ceb64a330cc2f31923e527b20a6ce5765f497494020b29bfd3b242ff8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e17ead4b-6910-634c-8bf3-932b1c675b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cd30d05dffbd0e73e617b1a125428636e10839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
