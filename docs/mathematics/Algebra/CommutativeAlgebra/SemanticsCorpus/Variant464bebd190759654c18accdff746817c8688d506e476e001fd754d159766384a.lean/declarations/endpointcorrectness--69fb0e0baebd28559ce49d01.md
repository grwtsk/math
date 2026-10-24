# endpointCorrectness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c021e32bc346789ab76afc853b7e629a0203eb3dff0ea463c0ab653e9ba0d19",
  "kind": "def",
  "lexical_name": "endpointCorrectness",
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
  "slug": "endpointcorrectness--69fb0e0baebd28559ce49d01",
  "source": {
    "blob": "4976c332e9575862cd330a3e18823ce5716cdf06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69fb0e0baebd28559ce49d01c7cb5f5dcc3ed2c0673cc99bb297443945e17941",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c021e32bc346789ab76afc853b7e629a0203eb3dff0ea463c0ab653e9ba0d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointCorrectness : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-semantics:correct:endpoint-difference" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    1
    "CubicCellSemantics.correct"
    (by decide)
    .theorem
    "f495118a8c645cbcf52273074ffa2dd850cf41521a334d534188672ee9690590"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration :=
    "Mathematics.Polynomial.CubicIntegralWitness.correct_endpointDifference"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale :=
    "Recover the source endpoint formula from a proof of the genuine interval integral."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4976c332e9575862cd330a3e18823ce5716cdf06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
