# incidenceOfSupport_finiteSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3618962e-0c09-4422-b08d-4590240c0241",
  "kind": "theorem",
  "lexical_name": "incidenceOfSupport_finiteSupport",
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
  "slug": "incidenceofsupport-finitesupport--ae0d6ad6111eedf63d5ca45d",
  "source": {
    "blob": "b9a09f2e95c99da5dbb0203df7028259e5294845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0d6ad6111eedf63d5ca45d3040228402dd8b837bbd76dde1d6cf98ece01d81",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3618962e-0c09-4422-b08d-4590240c0241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incidenceOfSupport_finiteSupport
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    incidenceOfSupport (finiteSupport code) = code := by
  cases code with
  | mk bits =>
      have bits_equal :
          (incidenceOfSupport
            (finiteSupport { bits := bits })).bits = bits := by
        apply BitVec.eq_of_getElem_eq
        intro index inBounds
        simp [incidenceOfSupport, finiteSupport]
      simpa [incidenceOfSupport] using
        congrArg FiniteIncidenceCode.mk bits_equal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a09f2e95c99da5dbb0203df7028259e5294845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
