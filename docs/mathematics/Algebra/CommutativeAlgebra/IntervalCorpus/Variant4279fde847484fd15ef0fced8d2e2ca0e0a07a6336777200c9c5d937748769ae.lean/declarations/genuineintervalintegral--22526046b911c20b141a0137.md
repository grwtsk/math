# genuineIntervalIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e11cfaf149861653c85f56ef6dc5d56651d20bac3185a051fad0190b4e0c7ddc",
  "kind": "def",
  "lexical_name": "genuineIntervalIntegral",
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
  "slug": "genuineintervalintegral--22526046b911c20b141a0137",
  "source": {
    "blob": "d1458a0a9a16d5f7d32ffccafea9228bd8eb370e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 99,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22526046b911c20b141a0137102decea5aba490756b94ac0de19598f128cb03d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e11cfaf149861653c85f56ef6dc5d56651d20bac3185a051fad0190b4e0c7ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genuineIntervalIntegral : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-integration:integral:ftc-correction" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "integral"
    (by decide)
    .definition
    "3156395ed4793b30a8ce6e64d6c1ae942a590d48dc26432092facb387b083822"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.intervalIntegral_cubic"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "Connect the endpoint formula to Mathlib's interval integral through the fundamental theorem."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Variant4279fde847484fd15ef0fced8d2e2ca0e0a07a6336777200c9c5d937748769ae.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1458a0a9a16d5f7d32ffccafea9228bd8eb370e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
