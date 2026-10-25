# countOne_implies_unique_simple_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f98596-cfe1-cba6-7b5c-251fc89328c8",
  "kind": "theorem",
  "lexical_name": "countOne_implies_unique_simple_zero",
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
  "slug": "countone-implies-unique-simple-zero--6fce1e452d7468899272a4e4",
  "source": {
    "blob": "fdfd8c1733c6f2bb04ae400598292d37eb595bff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fce1e452d7468899272a4e4cc941053d1b85694b9699f5df7e1437d18d1b502",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f98596-cfe1-cba6-7b5c-251fc89328c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countOne_implies_unique_simple_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (count :
      ArgumentPrincipleCertificate authority cell)
    (countOne : count.count = 1) :
    ∃! z,
      z ∈ cell.interior ∧
      HasSimpleZero
        xi
        (authority.divisor cell).multiplicity
        z := by
  let certificate :
      UniqueZeroCertificate authority cell :=
    {
      countCertificate := count
      count_eq_one := countOne
    }
  refine
    ⟨certificate.zero,
      ⟨certificate.zero_mem, certificate.simple⟩,
      ?_⟩
  intro z hz
  exact certificate.unique z hz.1 hz.2.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfd8c1733c6f2bb04ae400598292d37eb595bff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
