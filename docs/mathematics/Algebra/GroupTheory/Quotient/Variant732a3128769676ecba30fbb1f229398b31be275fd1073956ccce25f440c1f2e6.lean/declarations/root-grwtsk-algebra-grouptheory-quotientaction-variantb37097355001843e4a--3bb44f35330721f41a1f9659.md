# _root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.MulActionHom.toQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2da4dc51688b881b65c45806e3371cb04912220871abb9a70c2a958981c0f505",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.MulActionHom.toQuotient",
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
  "slug": "root-grwtsk-algebra-grouptheory-quotientaction-variantb37097355001843e4a--3bb44f35330721f41a1f9659",
  "source": {
    "blob": "556fb811522073293ead7bcecbe15636be2f71f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 141,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb44f35330721f41a1f96592ceceea391350ff1a305d2f50124dbc323efd2eb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2da4dc51688b881b65c45806e3371cb04912220871abb9a70c2a958981c0f505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.QuotientAction.Variantb37097355001843e4a30379e9358c067249b63d249ef87c41209d62c6611ec00.MulActionHom.toQuotient (H : Subgroup α) : α →[α] α ⧸ H :=
  ⟨(↑), Quotient.smul_coe H⟩
#align mul_action_hom.to_quotient MulActionHom.toQuotient

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant732a3128769676ecba30fbb1f229398b31be275fd1073956ccce25f440c1f2e6.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556fb811522073293ead7bcecbe15636be2f71f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
