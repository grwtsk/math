# inSameSemiring?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7896a453f42dcfe38cda3867999b514c749a442881022e3f2ef5ab966597c786",
  "kind": "def",
  "lexical_name": "inSameSemiring?",
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
  "slug": "insamesemiring--4f5acadd11f4e7fec538c7f1",
  "source": {
    "blob": "6df59ab70f234b8c96a98a7ada30873af94abf44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f5acadd11f4e7fec538c7f1c6e46fdcdce85f75df12bf431632af5cdbabf6c6",
  "verification": {
    "reference": "docs/verification/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7896a453f42dcfe38cda3867999b514c749a442881022e3f2ef5ab966597c786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def inSameSemiring? (a b : Expr) : GoalM (Option Nat) := do
  let some semiringId ← getTermSemiringId? a | return none
  let some semiringId' ← getTermSemiringId? b | return none
  unless semiringId == semiringId' do return none -- This can happen when we have heterogeneous equalities
  return semiringId

/-- Returns `some ringId` if `a` and `b` are elements of the same (non-commutative) ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df59ab70f234b8c96a98a7ada30873af94abf44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
