# Methods

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aea3c8985fede0623bf8f223ec8b4a2314e865fbd71c9158f02fb1df5a20286a",
  "kind": "structure",
  "lexical_name": "Methods",
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
  "slug": "methods--e7efed42fcbd6cab7ed3cd23",
  "source": {
    "blob": "010740ceebf31650bfd954c627bfdd4d12b5a583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7efed42fcbd6cab7ed3cd238adf673fa67d5b8542c58998b70e93514d3418b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aea3c8985fede0623bf8f223ec8b4a2314e865fbd71c9158f02fb1df5a20286a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Methods where
  /-- Given `e`, construct `(bound, n, p)` where `p` is a proof of `n ≤ e` or `n < e`
  (characterized by `bound`), or `failure` if the type is not lower-bounded. -/
  initLB (e : Expr) : MetaM (Bound × Expr × Expr) := failure
  /-- Given `e`, construct `(bound, n, p)` where `p` is a proof of `e ≤ n` or `e < n`
  (characterized by `bound`), or `failure` if the type is not upper-bounded. -/
  initUB (e : Expr) : MetaM (Bound × Expr × Expr) := failure
  /-- Given `a, b`, prove `a ≤ b` or fail. -/
  proveLE : Expr → Expr → MetaM Expr
  /-- Given `a, b`, prove `a ≱ b` or fail. -/
  proveLT : Expr → Expr → MetaM Expr
  /-- Given `a, b, a', p` where `p` proves `a ≱ b` and `a' := a+1`, prove `a' ≤ b`. -/
  roundUp : Expr → Expr → Expr → Expr → MetaM Expr
  /-- Given `a, b, b', p` where `p` proves `a ≱ b` and `b' := b-1`, prove `a ≤ b'`. -/
  roundDown : Expr → Expr → Expr → Expr → MetaM Expr
  /-- Given `e`, return `(z, n, p)` where `p : e = n` and `n` is a numeral
  appropriate for the type denoting the integer `z`. -/
  eval : Expr → MetaM (Int × Expr × Expr)
  /-- Construct the canonical numeral for integer `z`, or fail if `z` is out of range. -/
  mkNumeral : Int → MetaM Expr

variable {α : Type*} {a b a' b' : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant084de1d4353a880cd7c697aaf7838ff874cc2ca6cc0ec24051ca3756e3ff1a2e.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010740ceebf31650bfd954c627bfdd4d12b5a583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
