# thetaRankFivePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c11c0d80af38091c6469ef1c02c433b946ef107ba2330600404d54b0d5af38e",
  "kind": "def",
  "lexical_name": "thetaRankFivePolynomial",
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
  "slug": "thetarankfivepolynomial--f3bea3d3b0671433552c98f6",
  "source": {
    "blob": "e829a4a90e249ea4b0849f4954149f45bb0a3033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 12,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3bea3d3b0671433552c98f6f8be0dc0b64067d8fc388d62cfa7eb1b2267cc3c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c11c0d80af38091c6469ef1c02c433b946ef107ba2330600404d54b0d5af38e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaRankFivePolynomial : ℕ → ℝ[X]
  | 0 => Polynomial.monomial 0 (-3) +
    Polynomial.monomial 1 (2)
  | 1 => Polynomial.monomial 0 (-15) +
    Polynomial.monomial 1 (30) +
    Polynomial.monomial 2 (-8)
  | 2 => Polynomial.monomial 0 (-75) +
    Polynomial.monomial 1 (330) +
    Polynomial.monomial 2 (-224) +
    Polynomial.monomial 3 (32)
  | 3 => Polynomial.monomial 0 (-375) +
    Polynomial.monomial 1 (3270) +
    Polynomial.monomial 2 (-4232) +
    Polynomial.monomial 3 (1440) +
    Polynomial.monomial 4 (-128)
  | 4 => Polynomial.monomial 0 (-1875) +
    Polynomial.monomial 1 (30930) +
    Polynomial.monomial 2 (-68096) +
    Polynomial.monomial 3 (41408) +
    Polynomial.monomial 4 (-8448) +
    Polynomial.monomial 5 (512)
  | 5 => Polynomial.monomial 0 (-9375) +
    Polynomial.monomial 1 (285870) +
    Polynomial.monomial 2 (-1008968) +
    Polynomial.monomial 3 (976320) +
    Polynomial.monomial 4 (-343040) +
    Polynomial.monomial 5 (46592) +
    Polynomial.monomial 6 (-2048)
  | 6 => Polynomial.monomial 0 (-46875) +
    Polynomial.monomial 1 (2610330) +
    Polynomial.monomial 2 (-14260064) +
    Polynomial.monomial 3 (20633312) +
    Polynomial.monomial 4 (-11109120) +
    Polynomial.monomial 5 (2536960) +
    Polynomial.monomial 6 (-245760) +
    Polynomial.monomial 7 (8192)
  | 7 => Polynomial.monomial 0 (-234375) +
    Polynomial.monomial 1 (23680470) +
    Polynomial.monomial 2 (-195822152) +
    Polynomial.monomial 3 (407806560) +
    Polynomial.monomial 4 (-315824768) +
    Polynomial.monomial 5 (107860480) +
    Polynomial.monomial 6 (-17274880) +
    Polynomial.monomial 7 (1253376) +
    Polynomial.monomial 8 (-32768)
  | 8 => Polynomial.monomial 0 (-1171875) +
    Polynomial.monomial 1 (214061730) +
    Polynomial.monomial 2 (-2640409856) +
    Polynomial.monomial 3 (7716000128) +
    Polynomial.monomial 4 (-8263546368) +
    Polynomial.monomial 5 (3959811072) +
    Polynomial.monomial 6 (-932413440) +
    Polynomial.monomial 7 (110460928) +
    Polynomial.monomial 8 (-6225920) +
    Polynomial.monomial 9 (131072)
  | _ => 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Variant2fea5fc563a2b6f1f8d77551f034cabc8a948c2aef36d07fe28db01fec428f5c.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e829a4a90e249ea4b0849f4954149f45bb0a3033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
