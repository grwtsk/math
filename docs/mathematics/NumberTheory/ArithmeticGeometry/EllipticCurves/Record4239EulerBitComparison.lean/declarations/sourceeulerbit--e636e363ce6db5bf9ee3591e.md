# sourceEulerBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4495d1fd97e3dbcf7eefdee4546f4c425529a274722b3d0f7aa99286298a3ee9",
  "kind": "def",
  "lexical_name": "sourceEulerBit",
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
  "slug": "sourceeulerbit--e636e363ce6db5bf9ee3591e",
  "source": {
    "blob": "ed8cae1cbcef256ba8282a4f77753cad2a973780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e636e363ce6db5bf9ee3591ee0432a9c07304a2822823e649a58b233863e94ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4495d1fd97e3dbcf7eefdee4546f4c425529a274722b3d0f7aa99286298a3ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sourceEulerBit (j i : Fin 32) : ZMod 2 :=
  let p := primeLabel j
  let a := sourceLocalInteger j i
  if (((a % (p : ℤ)).toNat) ^ ((p - 1) / 2)) % p = p - 1
  then 1 else 0

/-- Both computations select precisely the same integer representative
and apply precisely the same Euler exponent. This is a source-identity
lemma, not an assertion that an arbitrary integer-to-bit function is
multiplicative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed8cae1cbcef256ba8282a4f77753cad2a973780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
