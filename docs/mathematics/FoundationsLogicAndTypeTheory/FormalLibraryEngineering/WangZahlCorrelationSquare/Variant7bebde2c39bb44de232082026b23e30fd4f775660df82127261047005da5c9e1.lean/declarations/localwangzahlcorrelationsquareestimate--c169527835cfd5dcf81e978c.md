# LocalWangZahlCorrelationSquareEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f140f560e9fc7e4393d36035e168f892f47a6de7657b358c0406287b38c02478",
  "kind": "def",
  "lexical_name": "LocalWangZahlCorrelationSquareEstimate",
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
  "slug": "localwangzahlcorrelationsquareestimate--c169527835cfd5dcf81e978c",
  "source": {
    "blob": "e1bd049e38185fec9367245ec45c4eda72239f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c169527835cfd5dcf81e978c21d808801779f557c1b5e436184d618a1380fd90",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f140f560e9fc7e4393d36035e168f892f47a6de7657b358c0406287b38c02478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocalWangZahlCorrelationSquareEstimate
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    {plan : HyperbolicSurgeryPlan N q B}
    (evaluated : EvaluatedSurgeryTree plan) (node : plan.tree.Node)
    (ε C : ℝ) : Prop :=
  0 < ε ∧ 0 ≤ C ∧
    evaluated.nodeIntervalSquareSum node ≤
      (C * (N + 1 : ℝ) ^ ε * evaluated.nodeMass node) ^ 2

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant7bebde2c39bb44de232082026b23e30fd4f775660df82127261047005da5c9e1.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bd049e38185fec9367245ec45c4eda72239f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
