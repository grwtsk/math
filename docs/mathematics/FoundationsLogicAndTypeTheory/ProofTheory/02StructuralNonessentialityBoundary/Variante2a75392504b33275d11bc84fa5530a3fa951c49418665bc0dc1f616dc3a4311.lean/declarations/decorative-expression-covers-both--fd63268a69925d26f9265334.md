# decorative_expression_covers_both

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d7f4815-99c2-97c2-9687-ec9f8010c4d7",
  "kind": "theorem",
  "lexical_name": "decorative_expression_covers_both",
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
  "slug": "decorative-expression-covers-both--fd63268a69925d26f9265334",
  "source": {
    "blob": "afa0fa95d501fafc440604e0bb795d62dd7ba5dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variante2a75392504b33275d11bc84fa5530a3fa951c49418665bc0dc1f616dc3a4311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd63268a69925d26f926533476f283c8e145690e08de142aa699a9cc80e37c7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variante2a75392504b33275d11bc84fa5530a3fa951c49418665bc0dc1f616dc3a4311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d7f4815-99c2-97c2-9687-ec9f8010c4d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decorative_expression_covers_both :
    decorativeDerivation.jointInferenceExpression.UsesSource false ∧
      decorativeDerivation.jointInferenceExpression.UsesSource true := by
  exact ⟨decorativeDerivation.sourceLeafCoverage false,
    decorativeDerivation.sourceLeafCoverage true⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variante2a75392504b33275d11bc84fa5530a3fa951c49418665bc0dc1f616dc3a4311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/02StructuralNonessentialityBoundary/Variante2a75392504b33275d11bc84fa5530a3fa951c49418665bc0dc1f616dc3a4311.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa0fa95d501fafc440604e0bb795d62dd7ba5dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
