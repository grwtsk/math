# deriveEquation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d176eb010794c7708682fbd1b500ab581d4d701c10727da98e207f9e398ba327",
  "kind": "def",
  "lexical_name": "deriveEquation",
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
  "slug": "deriveequation--bcab54f856ebc0a631e04da5",
  "source": {
    "blob": "1d9264e160c546c9d8dc700caed09f5ae392941b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 110,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcab54f856ebc0a631e04da53462dae960549af103b5e61e61fce6744df0d1b2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d176eb010794c7708682fbd1b500ab581d4d701c10727da98e207f9e398ba327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveEquation (declaration : FullModelDeclaration) :
    DerivationCandidate → Option (DerivedEquation declaration)
  | .generator index =>
    match listed : declaration.generators[index]? with
    | none => none
    | some entry => admitDerivedEquation declaration ⟨entry.equation, .generator listed⟩
  | .reflexivity term => admitDerivedEquation declaration ⟨⟨term, term⟩, .reflexivity term⟩
  | .symmetry prior => do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨result.equation.right, result.equation.left⟩, .symmetry result.proof⟩
  | .transitivity first second => do
    let left ← deriveEquation declaration first
    let right ← deriveEquation declaration second
    if middle : left.equation.right = right.equation.left then
      admitDerivedEquation declaration ⟨⟨left.equation.left, right.equation.right⟩,
        .transitivity left.proof (middle ▸ right.proof)⟩
    else none
  | .constructor constructor prior => do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨.unary constructor result.equation.left, .unary constructor result.equation.right⟩,
      .constructor constructor result.proof⟩
  | .substitution terms prior => do
    if ¬SubstitutionValid declaration terms then none else do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨result.equation.left.substitute terms, result.equation.right.substitute terms⟩,
      .substitution terms result.proof⟩

/-- A derived equation whose concrete endpoints also pass the finite type and size checks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Congruence/Variantd6253ce0a8d79fef03a7f8259e8ed23bf4ff105a2b3fab930f1ebe420ab99ca4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9264e160c546c9d8dc700caed09f5ae392941b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
