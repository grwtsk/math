# leadingCoeff_add_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df0e64c5-0ac2-9dcb-47bf-021701d2dbf4",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_add_of_lt",
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
  "slug": "leadingcoeff-add-of-lt--d1d72f57d9b68c3feb59d24f",
  "source": {
    "blob": "0dfb362f0881d12ced89a91abac5aa802a758150",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variant12b28c800705984b4c0bb55073afd9743fd6e659a9f230bd08b91e3d012fd93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d72f57d9b68c3feb59d24f7c4b11a014cf16945eebbe3e9d8eba401ae486b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variant12b28c800705984b4c0bb55073afd9743fd6e659a9f230bd08b91e3d012fd93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0e64c5-0ac2-9dcb-47bf-021701d2dbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_add_of_lt {f g : MvPolynomial σ R} (h : m.degree g ≺[m] m.degree f) :
    m.leadingCoeff (f + g) = m.leadingCoeff f := by
  simp only [leadingCoeff, m.degree_add_of_lt h, coeff_add, coeff_eq_zero_of_lt h, add_zero]

@[deprecated (since := "2025-01-31")] alias lCoeff_add_of_lt := leadingCoeff_add_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variant12b28c800705984b4c0bb55073afd9743fd6e659a9f230bd08b91e3d012fd93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variant12b28c800705984b4c0bb55073afd9743fd6e659a9f230bd08b91e3d012fd93e.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dfb362f0881d12ced89a91abac5aa802a758150` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
