# toRatParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:029134068c3ac5d1880ba78183e2b7077d50321513eac6b1805998ea5dc2c4cd",
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
  "slug": "toratparts--8a7e49011de69b1211bb86e7",
  "source": {
    "blob": "906fe5e25bcb1eb615ad8fd571acf8d1aee59e02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a7e49011de69b1211bb86e766785b754fed59b99a4af560d4138e959e33d56c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:029134068c3ac5d1880ba78183e2b7077d50321513eac6b1805998ea5dc2c4cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRatParts (f : Float32) : Option (Int × Int) :=
  if f.isFinite then
    let (f', exp) := f.frExp
    let x := (2^24:Nat).toFloat32 * f'
    let v := if x < 0 then
      (-(-x).floor.toUInt32.toNat : Int)
    else
      (x.floor.toUInt32.toNat : Int)
    some (v, exp - 24)
  else none

/-- Returns `v, exp` integers such that `f = v * 2^exp`.
Like `toRatParts`, but `e` is guaranteed to be minimal (`v` is always odd), unless `v = 0`.
`v.abs` will be at most `2^24 - 1` because `Float32` has 24 bits of precision.
Returns `none` when `f` is not finite (i.e. `inf`, `-inf` or a `nan`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906fe5e25bcb1eb615ad8fd571acf8d1aee59e02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
