# readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:494187e3-1725-3ba0-8570-3895192fc4e9",
  "kind": "theorem",
  "lexical_name": "readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments",
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
  "slug": "readout-eq-zero-on-corrected-of-factorsthroughbombierimoments--43fcea20a0202091f015ed9e",
  "source": {
    "blob": "4a237718b7a1321fdfab175301b91dc131cf6895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43fcea20a0202091f015ed9e0fb8ba6e7c044287c8f526f7ba66e0d88be1e2f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494187e3-1725-3ba0-8570-3895192fc4e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments
    {α : Type*} {readout : Combination 2 → α}
    (hfactor : FactorsThroughBombieriMoments readout) :
    readout correctedCoordinates = readout 0 := by
  rcases hfactor with ⟨decode, hdecode⟩
  have hcorrected :
      readout correctedCoordinates =
        decode (bombieriMomentProfile correctedCoordinates) := by
    simpa only [Function.comp_apply] using
      congrFun hdecode correctedCoordinates
  have hzero :
      readout (0 : Combination 2) =
        decode (bombieriMomentProfile (0 : Combination 2)) := by
    simpa only [Function.comp_apply] using
      congrFun hdecode (0 : Combination 2)
  calc
    readout correctedCoordinates =
        decode (bombieriMomentProfile correctedCoordinates) := hcorrected
    _ = decode (bombieriMomentProfile (0 : Combination 2)) := by
      rw [bombieriMomentProfile_correctedCoordinates,
        bombieriMomentProfile_zero]
    _ = readout 0 := hzero.symm

/-- Any readout that distinguishes the corrected kernel witness from zero cannot
factor through the two moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a237718b7a1321fdfab175301b91dc131cf6895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
