# cubicDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d57b15679852cfbb8f84884dce15882792de99e810e8a40dfdaacdd40d5fb46",
  "kind": "def",
  "lexical_name": "cubicDerivative",
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
  "slug": "cubicderivative--bc06c59e2d83f0a1eea89b36",
  "source": {
    "blob": "7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc06c59e2d83f0a1eea89b3651551888afa75468c0039d9cdf152fb1277dd6e5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d57b15679852cfbb8f84884dce15882792de99e810e8a40dfdaacdd40d5fb46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicDerivative : CorpusSubsumptionLink where
  linkId := { value := "ideas:analysis-cubic:cubic:derivative" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    4
    "derivative"
    (by decide)
    .definition
    "a39974d0770fc87c6b28c2c4fd9305a03171e927316c7492640c4ab369cdebad"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.derivative_cubic"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale := "Replace a coefficient constructor with polynomial derivative equality."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
