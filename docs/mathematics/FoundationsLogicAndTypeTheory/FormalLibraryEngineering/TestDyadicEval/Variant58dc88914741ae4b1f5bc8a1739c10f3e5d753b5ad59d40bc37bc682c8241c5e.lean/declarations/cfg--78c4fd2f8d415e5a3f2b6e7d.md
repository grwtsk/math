# cfg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64e4d1bedcbd61732b3b08d5e35d39ab120b231ef48c7fdb1a648aafc79232a7",
  "kind": "def",
  "lexical_name": "cfg",
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
  "slug": "cfg--78c4fd2f8d415e5a3f2b6e7d",
  "source": {
    "blob": "8e3a65d549fd218299eed3c85f5755248d944108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicEval/Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78c4fd2f8d415e5a3f2b6e7d5e50d1c733ea90570d5252d7e89e5e7618a241f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicEval/Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64e4d1bedcbd61732b3b08d5e35d39ab120b231ef48c7fdb1a648aafc79232a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cfg : DyadicConfig := {}

/-! ### sinc tests -/

-- sinc(x) on [0.5, 1.5]: should be within [-1, 1]
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env testI) cfg
  IO.println s!"sinc([0.5, 1.5]): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) on [-0.1, 0.1]: near-zero region, sinc(0) = 1
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env nearZeroI) cfg
  IO.println s!"sinc([-0.1, 0.1]): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) on [-2, 2]: wide interval
#eval do
  let r := evalIntervalDyadic (Expr.sinc (Expr.var 0)) (env wideI) cfg
  IO.println s!"sinc([-2, 2]): [{r.lo.toRat}, {r.hi.toRat}]"

/-! ### arsinh tests -/

-- arsinh(x) on [0.5, 1.5]
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env testI) cfg
  IO.println s!"arsinh([0.5, 1.5]): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(x) on [-2, 2]
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env wideI) cfg
  IO.println s!"arsinh([-2, 2]): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(0) = 0, so on [0, 0] should contain 0
#eval do
  let r := evalIntervalDyadic (Expr.arsinh (Expr.var 0)) (env zeroI) cfg
  IO.println s!"arsinh([0, 0]): [{r.lo.toRat}, {r.hi.toRat}]"

/-! ### Composition tests: sinc and arsinh with other functions -/

-- sin(arsinh(x)) on [0.5, 1.5]
#eval do
  let e := Expr.sin (Expr.arsinh (Expr.var 0))
  let r := evalIntervalDyadic e (env testI) cfg
  IO.println s!"sin(arsinh([0.5, 1.5])): [{r.lo.toRat}, {r.hi.toRat}]"

-- exp(sinc(x)) on [-2, 2]: sinc ∈ [-1,1] so exp(sinc) ∈ [1/e, e]
#eval do
  let e := Expr.exp (Expr.sinc (Expr.var 0))
  let r := evalIntervalDyadic e (env wideI) cfg
  IO.println s!"exp(sinc([-2, 2])): [{r.lo.toRat}, {r.hi.toRat}]"

-- arsinh(sin(x)) on [-2, 2]
#eval do
  let e := Expr.arsinh (Expr.sin (Expr.var 0))
  let r := evalIntervalDyadic e (env wideI) cfg
  IO.println s!"arsinh(sin([-2, 2])): [{r.lo.toRat}, {r.hi.toRat}]"

-- sinc(x) * arsinh(x) + cos(x) on [0.5, 1.5]
#eval do
  let e := Expr.add
    (Expr.mul (Expr.sinc (Expr.var 0)) (Expr.arsinh (Expr.var 0)))
    (Expr.cos (Expr.var 0))
  let r := evalIntervalDyadic e (env testI) cfg
  IO.println s!"sinc(x)*arsinh(x)+cos(x) on [0.5, 1.5]: [{r.lo.toRat}, {r.hi.toRat}]"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicEval/Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDyadicEval/Variant58dc88914741ae4b1f5bc8a1739c10f3e5d753b5ad59d40bc37bc682c8241c5e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e3a65d549fd218299eed3c85f5755248d944108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
