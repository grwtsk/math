# comm_ring_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ac3f7a0fed2fb7e95bf6aec1e594d76e9770061e3bda30a041c47352542424a",
  "kind": "abbrev",
  "lexical_name": "comm_ring_aux₂",
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
  "slug": "comm-ring-aux--6a8c2120de87f62b9121b606",
  "source": {
    "blob": "4d25bd72fc79af8863b108f61742c351bb5561bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 240,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a8c2120de87f62b9121b606feae64d75a39e2985dad9860840f15df6dd61adf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ac3f7a0fed2fb7e95bf6aec1e594d76e9770061e3bda30a041c47352542424a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private abbrev comm_ring_aux₂ : CommRing (𝕎 (MvPolynomial R ℤ)) :=
  (mapFun.injective _ <| map_injective (Int.castRingHom ℚ) Int.cast_injective).commRing _
    (mapFun.zero _) (mapFun.one _) (mapFun.add _) (mapFun.mul _) (mapFun.neg _) (mapFun.sub _)
    (mapFun.nsmul _) (mapFun.zsmul _) (mapFun.pow _) (mapFun.natCast _) (mapFun.intCast _)

/-- The commutative ring structure on `𝕎 R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d25bd72fc79af8863b108f61742c351bb5561bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
