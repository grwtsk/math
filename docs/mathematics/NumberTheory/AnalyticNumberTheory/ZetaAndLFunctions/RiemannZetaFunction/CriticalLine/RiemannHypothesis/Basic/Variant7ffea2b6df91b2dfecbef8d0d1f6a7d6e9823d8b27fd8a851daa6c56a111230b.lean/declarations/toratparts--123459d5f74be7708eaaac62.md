# toRatParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fedaf15613f16c3d73da020ef25b5a1316cc57aa9ddbcdcaa98c0452db9e553",
  "kind": "def",
  "lexical_name": "toRatParts",
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
  "slug": "toratparts--123459d5f74be7708eaaac62",
  "source": {
    "blob": "448f6452db21aa1ca34ebc47ffa6d248ba6701db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:123459d5f74be7708eaaac624001da4d68dc6db6b77feda1a8194c7f9530b47f",
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

Occurrence: `declaration:0fedaf15613f16c3d73da020ef25b5a1316cc57aa9ddbcdcaa98c0452db9e553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRatParts (f : Float) : Option (Int × Int) :=
  if f.isFinite then
    let (f', exp) := f.frExp
    let x := (2^53:Nat).toFloat * f'
    let v := if x < 0 then
      (-(-x).floor.toUInt64.toNat : Int)
    else
      (x.floor.toUInt64.toNat : Int)
    some (v, exp - 53)
  else none

/-- Returns `v, exp` integers such that `f = v * 2^exp`.
Like `toRatParts`, but `e` is guaranteed to be minimal (`v` is always odd), unless `v = 0`.
`v.abs` will be at most `2^53 - 1` because `Float` has 53 bits of precision.
Returns `none` when `f` is not finite (i.e. `inf`, `-inf` or a `nan`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ffea2b6df91b2dfecbef8d0d1f6a7d6e9823d8b27fd8a851daa6c56a111230b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448f6452db21aa1ca34ebc47ffa6d248ba6701db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
