# toStringFull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b9a3f366f3d170b8cfb9573d718a091e6c917fbc22899510812fa4acb6e8585",
  "kind": "def",
  "lexical_name": "toStringFull",
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
  "slug": "tostringfull--6546cb6edc0ab24a194c575c",
  "source": {
    "blob": "906fe5e25bcb1eb615ad8fd571acf8d1aee59e02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6546cb6edc0ab24a194c575cb984d7023237bf1a000a16c06d5334752b36b5c1",
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

Occurrence: `declaration:1b9a3f366f3d170b8cfb9573d718a091e6c917fbc22899510812fa4acb6e8585`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toStringFull (f : Float) : String :=
  if let some (v, exp) := toRatParts f then
    let v' := v.natAbs
    let s := if exp ≥ 0 then
      Nat.repr (v' * (2^exp.toNat:Nat))
    else
      let e := (-exp).toNat
      let intPart := v' / 2^e
      let rem := v' % 2^e
      if rem == 0 then
        Nat.repr intPart
      else
        let rem := Nat.repr ((2^e + v' % 2^e) * 5^e)
        let rem := rem.dropEndWhile (· == '0')
        s!"{intPart}.{rem.drop 1}"
    if v < 0 then s!"-{s}" else s
  else f.toString -- inf, -inf, nan

end Float

namespace Float32

/--
The floating point value closest to the mathematical constant `π`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant2de6fcf3c3162007d0c596e041eb8a78b48f4295905260a749d9d4a69f388cbe.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `906fe5e25bcb1eb615ad8fd571acf8d1aee59e02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
