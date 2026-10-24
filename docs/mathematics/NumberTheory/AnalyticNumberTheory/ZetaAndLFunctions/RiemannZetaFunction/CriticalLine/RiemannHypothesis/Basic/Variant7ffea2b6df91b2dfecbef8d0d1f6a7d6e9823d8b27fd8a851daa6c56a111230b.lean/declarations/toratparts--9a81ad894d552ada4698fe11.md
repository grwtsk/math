# toRatParts'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41e6803b8d0f7061a709dc4657c0088d013b7d2b2c79b189a693ef82776519a4",
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
  "slug": "toratparts--9a81ad894d552ada4698fe11",
  "source": {
    "blob": "448f6452db21aa1ca34ebc47ffa6d248ba6701db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a81ad894d552ada4698fe116c3b9f8bbe00961de3a86d98e9d3e3faa3c2ad73",
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

Occurrence: `declaration:41e6803b8d0f7061a709dc4657c0088d013b7d2b2c79b189a693ef82776519a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toRatParts' (f : Float32) : Option (Int × Int) :=
  f.toRatParts.map fun (n, e) =>
    if n == 0 then (0, 0) else
      let neg : Bool := n < 0
      let v := n.natAbs.toUInt32
      let c := trailingZeros v 0
      let v := (v >>> c.toUInt32).toNat
      (if neg then -v else v, e + c.toNat)
where
  /-- Calculates the number of trailing bits in a `UInt32`. Requires `v ≠ 0`. -/
  -- TODO: optimize and make total
  trailingZeros (v : UInt32) (c : UInt8) :=
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448f6452db21aa1ca34ebc47ffa6d248ba6701db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
