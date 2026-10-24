# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:447cf7dd3b803aba13bd6bbab91ca96f3fbf70344ab3f835bdd77d5d8f1c56b6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b563903e0b9c76405afa0e5b",
  "source": {
    "blob": "e20d33189fdfb37ec05ce90a9cf1f7211b244ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 108,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b563903e0b9c76405afa0e5b32a7e546214a18db6227a62c331ff20424b4724c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:447cf7dd3b803aba13bd6bbab91ca96f3fbf70344ab3f835bdd77d5d8f1c56b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (f : X ⟶ Y) (V : Y.Opens) [UniversallyClosed f] : UniversallyClosed (f ∣_ V) :=
  IsZariskiLocalAtTarget.restrict ‹_› V

open Scheme.Pullback _root_.PrimeSpectrum MvPolynomial in
/-- If `X` is universally closed over a field, then `X` is quasi-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variantbc777437d7289b65ed23f6cc15ab5ad86917bb753547714b57e8fa5a1cb09f89.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e20d33189fdfb37ec05ce90a9cf1f7211b244ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
