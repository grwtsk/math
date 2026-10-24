# _root_.GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.AlgebraicGeometry.SpecMap_preimage_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eec0d280-4bfc-25f3-99c4-74fe495f451d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.AlgebraicGeometry.SpecMap_preimage_basicOpen",
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
  "slug": "root-grwtsk-geometry-algebraicgeometry-scheme-variantfd1eac831f08466b6ed--e84ddb7c9faf1f6180933471",
  "source": {
    "blob": "4bf2c601d78123399802cf91208f8f15cfbc2c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 736,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e84ddb7c9faf1f618093347109505ec120d2dda8209c55018c1fae2dbb05fbd7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eec0d280-4bfc-25f3-99c4-74fe495f451d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.AlgebraicGeometry.SpecMap_preimage_basicOpen {R S : CommRingCat} (f : R ⟶ S) (r : R) :
    Spec.map f ⁻¹ᵁ PrimeSpectrum.basicOpen r = PrimeSpectrum.basicOpen (f r) := rfl

end BasicOpen

section ZeroLocus

variable (X : Scheme.{u})

/--
The zero locus of a set of sections `s` over an open set `U` is the closed set consisting of
the complement of `U` and of all points of `U`, where all elements of `f` vanish.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf2c601d78123399802cf91208f8f15cfbc2c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
