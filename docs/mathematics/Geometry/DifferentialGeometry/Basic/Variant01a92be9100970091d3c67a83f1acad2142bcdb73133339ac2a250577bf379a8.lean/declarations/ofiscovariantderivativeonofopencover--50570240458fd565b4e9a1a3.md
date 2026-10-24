# ofIsCovariantDerivativeOnOfOpenCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e63dd0850d013a78f97033c8ea20403397882d58f9f89cbd692a18ca61faaa2c",
  "kind": "def",
  "lexical_name": "ofIsCovariantDerivativeOnOfOpenCover",
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
  "slug": "ofiscovariantderivativeonofopencover--50570240458fd565b4e9a1a3",
  "source": {
    "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 391,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50570240458fd565b4e9a1a3f471f63527f4a6211a1716146c0e6f0c4c338efc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e63dd0850d013a78f97033c8ea20403397882d58f9f89cbd692a18ca61faaa2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsCovariantDerivativeOnOfOpenCover {ι : Type*} {s : ι → Set M}
    {cov : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)}
    (hcov : ∀ i, IsCovariantDerivativeOn F cov (s i)) (hs : ⋃ i, s i = Set.univ) :
    CovariantDerivative I F V :=
  ⟨cov, hs ▸ IsCovariantDerivativeOn.iUnion hcov⟩

@[deprecated (since := "2026-07-26")]
alias of_isCovariantDerivativeOn_of_open_cover := ofIsCovariantDerivativeOnOfOpenCover

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9563d266d97b9201d51fce894db3958bc18e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
