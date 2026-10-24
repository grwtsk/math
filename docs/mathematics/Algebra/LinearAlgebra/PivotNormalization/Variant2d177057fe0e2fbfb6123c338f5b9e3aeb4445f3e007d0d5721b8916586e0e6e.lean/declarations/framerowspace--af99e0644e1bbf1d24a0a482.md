# frameRowSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9e12f62590e3a22b1714aca74a1fb538619bf08479ce2e6709e2788db8d6406",
  "kind": "def",
  "lexical_name": "frameRowSpace",
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
  "slug": "framerowspace--af99e0644e1bbf1d24a0a482",
  "source": {
    "blob": "5b1bc9b94d15beb3cb56d35a83947f51ab06065b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af99e0644e1bbf1d24a0a4829742cffa51f251e9442ba60e8656b0c62440940a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9e12f62590e3a22b1714aca74a1fb538619bf08479ce2e6709e2788db8d6406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frameRowSpace (A : Matrix (Fin k) (Fin n) ℝ) : Submodule ℝ (Fin n → ℝ) :=
  Submodule.span ℝ (Set.range A.row)

/-- Row-space membership is precisely representation by a row coefficient vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1bc9b94d15beb3cb56d35a83947f51ab06065b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
