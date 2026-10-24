# torsion_of_hasOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28469146-ccc5-28e7-060f-1944d99bb378",
  "kind": "theorem",
  "lexical_name": "torsion_of_hasOrder",
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
  "slug": "torsion-of-hasorder--833859dab69a8276a308311b",
  "source": {
    "blob": "0f46053f92751d32046bc7f6bda513e722818d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:833859dab69a8276a308311b481e548a65b3aa37a1db23a1b301543f924b2249",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28469146-ccc5-28e7-060f-1944d99bb378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_of_hasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  ⟨n, h.1, h.2.1⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionPoints.NaturalPointMultiples.Variant48298d454f75ac50
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/TorsionPoints/NaturalPointMultiples/Variant48298d454f75ac50/PositiveOrderAndTorsion.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f46053f92751d32046bc7f6bda513e722818d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
