# unpack

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b08cecc4ffe6974e14801f0c7551b8b900c09b55ac7aa2700539f90805c1519f",
  "kind": "def",
  "lexical_name": "unpack",
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
  "slug": "unpack--49eb08c6ae22fbcec8105422",
  "source": {
    "blob": "ad9b55859e2fbfce9fcf18c1dbbae92e7d73df78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0c217b622171c3e1b625c39d8c08bac891491cdf79fab19798503a031b39b549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49eb08c6ae22fbcec8105422db86f0b04d6a094e2e3cbddf6d228d0fa48a3cd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0c217b622171c3e1b625c39d8c08bac891491cdf79fab19798503a031b39b549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b08cecc4ffe6974e14801f0c7551b8b900c09b55ac7aa2700539f90805c1519f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unpack (spec : Format) (b : BitVec spec.numBits) : UnpackedFloat :=
  let mantissaVec := unpackMantissa b
  let exponentVec : BitVec spec.exponentBits :=  unpackExponent b
  let exponent : Int := (exponentVec.toNat : Int) - (spec.exponentBias + spec.mantissaBitsWithoutImplicit)
  let signVec : BitVec 1 := unpackSign b
  let sign := Sign.ofBitVec signVec
  if exponentVec = -1#_ then
    if mantissaVec = 0#_ then
      .infinity sign
    else
      .notANumber
  else if exponentVec = 0#_ then
    if h : mantissaVec = 0#_ then
      .zero sign
    else
      -- subnormal
      .finite sign mantissaVec.toNat (exponent + 1) (by simpa [BitVec.toNat_pos, BitVec.pos_iff_ne_zero])
  else
    -- normal
    .finite sign (1#1 ++ mantissaVec).toNat exponent (by simp)

end Float.Model.UnpackedFloat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0c217b622171c3e1b625c39d8c08bac891491cdf79fab19798503a031b39b549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0c217b622171c3e1b625c39d8c08bac891491cdf79fab19798503a031b39b549.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9b55859e2fbfce9fcf18c1dbbae92e7d73df78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
