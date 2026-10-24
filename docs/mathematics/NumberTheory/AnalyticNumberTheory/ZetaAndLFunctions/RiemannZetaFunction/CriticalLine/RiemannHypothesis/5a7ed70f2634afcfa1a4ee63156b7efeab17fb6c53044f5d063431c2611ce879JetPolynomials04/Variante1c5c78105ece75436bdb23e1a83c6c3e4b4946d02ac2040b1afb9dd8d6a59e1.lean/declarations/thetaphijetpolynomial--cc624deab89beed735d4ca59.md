# thetaPhiJetPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2d0a1022b9319d160eb8836972cb65e462dfd629477fc876eaf55b326e06281",
  "kind": "def",
  "lexical_name": "thetaPhiJetPolynomial",
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
  "slug": "thetaphijetpolynomial--cc624deab89beed735d4ca59",
  "source": {
    "blob": "e849f7bd4312fa264ccab978b8804a9f531b393a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variante1c5c78105ece75436bdb23e1a83c6c3e4b4946d02ac2040b1afb9dd8d6a59e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc624deab89beed735d4ca59a73064ec46029e422f8dcce10601ce07e5dd9dca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variante1c5c78105ece75436bdb23e1a83c6c3e4b4946d02ac2040b1afb9dd8d6a59e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2d0a1022b9319d160eb8836972cb65e462dfd629477fc876eaf55b326e06281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiJetPolynomial (k : Fin 5) (y : ℝ) : ℝ :=
  ![2 * y - 3,
    -8 * y ^ 2 + 30 * y - 15,
    32 * y ^ 3 - 224 * y ^ 2 + 330 * y - 75,
    -128 * y ^ 4 + 1440 * y ^ 3 - 4232 * y ^ 2 + 3270 * y - 375,
    512 * y ^ 5 - 8448 * y ^ 4 + 41408 * y ^ 3 -
      68096 * y ^ 2 + 30930 * y - 1875] k

/-- Explicit polynomial bounds valid already at `y ≥ 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variante1c5c78105ece75436bdb23e1a83c6c3e4b4946d02ac2040b1afb9dd8d6a59e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5a7ed70f2634afcfa1a4ee63156b7efeab17fb6c53044f5d063431c2611ce879JetPolynomials04/Variante1c5c78105ece75436bdb23e1a83c6c3e4b4946d02ac2040b1afb9dd8d6a59e1.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e849f7bd4312fa264ccab978b8804a9f531b393a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
