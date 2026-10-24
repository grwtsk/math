# ConditionalArithmeticWorkCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67eaa93e9c13145d54acd77f3fbe5c8784f2eeb92981609308997216a030947e",
  "kind": "structure",
  "lexical_name": "ConditionalArithmeticWorkCertificate",
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
  "slug": "conditionalarithmeticworkcertificate--0a9a09f6eb18daad9a0aa083",
  "source": {
    "blob": "3636e1c16b496fbd5f173b36b0bb75794b55586c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a9a09f6eb18daad9a0aa083341b0d89a52097ba1307b1c5f9482fc634169bcf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67eaa93e9c13145d54acd77f3fbe5c8784f2eeb92981609308997216a030947e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConditionalArithmeticWorkCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    {lift : ArithmeticKernelLift problem Kernel}
    (witness : ArithmeticAdversaryWitness lift)
    (bounds : ArithmeticKernelNormCertificate witness)
    (OracleAlgorithm : Type y) (ConcreteAttack : Type z) where
  concrete :
    ConcreteHardnessCertificate
      problem OracleAlgorithm ConcreteAttack
  sameWitness :
    concrete.oracle.witness = witness.generalWitness
  targetScale : ℝ
  targetBound :
    targetScale ≤
      (concrete.oracle.constant *
        (bounds.numeratorFloor / bounds.denominatorCeiling)) /
          concrete.workTranslation.queriesPerWork

namespace ConditionalArithmeticWorkCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {Kernel : Type x}
  {lift : ArithmeticKernelLift problem Kernel}
  {witness : ArithmeticAdversaryWitness lift}
  {bounds : ArithmeticKernelNormCertificate witness}
  {OracleAlgorithm : Type y} {ConcreteAttack : Type z}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConditionalArithmeticHardness/Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3636e1c16b496fbd5f173b36b0bb75794b55586c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
