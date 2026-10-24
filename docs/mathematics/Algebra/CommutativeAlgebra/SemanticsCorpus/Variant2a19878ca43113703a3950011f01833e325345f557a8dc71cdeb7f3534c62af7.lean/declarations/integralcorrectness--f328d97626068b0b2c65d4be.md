# integralCorrectness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fa8d459192ce445d00bcae9325ada0474d7efffb53ea105e3f0eeb49f512ace",
  "kind": "def",
  "lexical_name": "integralCorrectness",
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
  "slug": "integralcorrectness--f328d97626068b0b2c65d4be",
  "source": {
    "blob": "1d6e352246946e0e5a14c422bf42246176db76a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant2a19878ca43113703a3950011f01833e325345f557a8dc71cdeb7f3534c62af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f328d97626068b0b2c65d4be090f6dbbb82cbbd8bfee8bf22e41f114fc4c297f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant2a19878ca43113703a3950011f01833e325345f557a8dc71cdeb7f3534c62af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fa8d459192ce445d00bcae9325ada0474d7efffb53ea105e3f0eeb49f512ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integralCorrectness : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-semantics:correct:genuine-integral" }
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
  targetDeclaration := "Mathematics.Polynomial.CubicIntegralWitness.correct"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "State correctness against Mathlib's interval integral rather than a renamed endpoint difference."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant2a19878ca43113703a3950011f01833e325345f557a8dc71cdeb7f3534c62af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SemanticsCorpus/Variant2a19878ca43113703a3950011f01833e325345f557a8dc71cdeb7f3534c62af7.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6e352246946e0e5a14c422bf42246176db76a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
