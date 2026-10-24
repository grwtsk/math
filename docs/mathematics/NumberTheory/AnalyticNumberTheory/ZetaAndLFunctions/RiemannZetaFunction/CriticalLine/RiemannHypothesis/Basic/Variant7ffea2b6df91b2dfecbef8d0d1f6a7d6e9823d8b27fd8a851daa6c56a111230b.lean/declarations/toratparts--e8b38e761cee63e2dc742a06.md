# toRatParts'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7650a8f3fab2f5c549dff671ec4b632793c73eeea2a83bb445907ab04d5596",
  "kind": "def",
  "lexical_name": "toRatParts'",
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
  "slug": "toratparts--e8b38e761cee63e2dc742a06",
  "source": {
    "blob": "448f6452db21aa1ca34ebc47ffa6d248ba6701db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b38e761cee63e2dc742a0614f91aa866c2eb076176021cd7c13bb8835b03c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7650a8f3fab2f5c549dff671ec4b632793c73eeea2a83bb445907ab04d5596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toRatParts' (f : Float) : Option (Int × Int) :=
  f.toRatParts.map fun (n, e) =>
    if n == 0 then (0, 0) else
      let neg : Bool := n < 0
      let v := n.natAbs.toUInt64
      let c := trailingZeros v 0
      let v := (v >>> c.toUInt64).toNat
      (if neg then -v else v, e + c.toNat)
where
  /-- Calculates the number of trailing bits in a `UInt64`. Requires `v ≠ 0`. -/
  -- Note: it's a bit dumb to be using a loop here, but it is hopefully written
  -- such that LLVM can tell we are computing trailing bits and do good things to it
  -- TODO: prove termination under suitable assumptions (only relevant if `Float` is not opaque)
  trailingZeros (v : UInt64) (c : UInt8) :=
    if v &&& 1 == 0 then trailingZeros (v >>> 1) (c + 1) else c

/-- Converts `f` to a string, including all decimal digits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448f6452db21aa1ca34ebc47ffa6d248ba6701db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
