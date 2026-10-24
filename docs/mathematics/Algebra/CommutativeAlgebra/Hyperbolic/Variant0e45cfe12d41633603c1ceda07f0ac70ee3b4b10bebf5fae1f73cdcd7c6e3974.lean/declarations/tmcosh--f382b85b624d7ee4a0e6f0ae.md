# tmCosh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90bb6425b3bd71eff9fe48ebe12e9002d9eb5e1614e35f1437e9a74b45a8e2dc",
  "kind": "def",
  "lexical_name": "tmCosh",
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
  "slug": "tmcosh--f382b85b624d7ee4a0e6f0ae",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 246,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f382b85b624d7ee4a0e6f0ae25b391c02ded297429637daf87c47d6209de7d7c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90bb6425b3bd71eff9fe48ebe12e9002d9eb5e1614e35f1437e9a74b45a8e2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tmCosh (J : IntervalRat) (n : ℕ) : TaylorModel :=
  { poly := coshTaylorPoly n
    remainder := ⟨-coshRemainderBound J n, coshRemainderBound J n,
      by linarith [coshRemainderBound_nonneg J n]⟩
    center := 0
    domain := J }

/-- Function-level Taylor model for tanh at center 0.
    Uses tanh = sinh / cosh with the fact that cosh(x) ≥ 1 > 0 for all x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
