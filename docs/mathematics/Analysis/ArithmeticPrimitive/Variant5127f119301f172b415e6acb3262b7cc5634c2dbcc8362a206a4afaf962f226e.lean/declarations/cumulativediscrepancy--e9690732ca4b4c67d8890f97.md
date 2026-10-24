# cumulativeDiscrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c48fbfaba599a2ba1c5822b52d7c6fdbb43c5c0d9e66cb91cbe44d366f0ae611",
  "kind": "def",
  "lexical_name": "cumulativeDiscrepancy",
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
  "slug": "cumulativediscrepancy--e9690732ca4b4c67d8890f97",
  "source": {
    "blob": "74bda4cc1552e84a6e9afb805bd572e7425c3f37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 29,
    "path": "GRWTSK/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9690732ca4b4c67d8890f978f467d4c8d9c354916007fd7fc9552ddb851c253",
  "verification": {
    "reference": "docs/verification/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c48fbfaba599a2ba1c5822b52d7c6fdbb43c5c0d9e66cb91cbe44d366f0ae611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cumulativeDiscrepancy (b : ℕ → ℝ) (N : ℕ) : ℝ := ∑ n ∈ Finset.Icc 2 N, b n
/-- The finite primitive in this module, with the following exact parameterization.

def finitePrimitive (b : ℕ → ℝ) (x : ℝ) (N : ℕ) : ℝ := 2 * ∑ n ∈ Finset.Icc 2 N, b n * (1 /
Real.sqrt n - 1 / Real.sqrt x)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ArithmeticPrimitive/Variant5127f119301f172b415e6acb3262b7cc5634c2dbcc8362a206a4afaf962f226e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74bda4cc1552e84a6e9afb805bd572e7425c3f37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
