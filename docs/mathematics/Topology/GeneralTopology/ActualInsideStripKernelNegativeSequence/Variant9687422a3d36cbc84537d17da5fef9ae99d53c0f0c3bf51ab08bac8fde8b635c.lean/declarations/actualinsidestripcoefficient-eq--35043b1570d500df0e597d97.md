# actualInsideStripCoefficient_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46682e62-0cba-0b9f-a430-8ebcc28cd405",
  "kind": "theorem",
  "lexical_name": "actualInsideStripCoefficient_eq",
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
  "slug": "actualinsidestripcoefficient-eq--35043b1570d500df0e597d97",
  "source": {
    "blob": "261fce18e3b19f753f085af6c88fec70fe69f63c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35043b1570d500df0e597d97fce4143222b6d00daba8bce0a09cc539da366f6b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46682e62-0cba-0b9f-a430-8ebcc28cd405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInsideStripCoefficient_eq :
    actualLeadingComplexCoefficient actualInsideStripMode = 6144 - 18432 * Complex.I := by
  have h3 : actualInsideStripMode ^ 3 = (-1 + Complex.I) / 32 := by
    apply Complex.ext <;>
      norm_num [actualInsideStripMode, pow_succ, Complex.mul_re, Complex.mul_im]
  have h5 : actualInsideStripMode ^ 5 = (-1 - Complex.I) / 256 := by
    apply Complex.ext <;>
      norm_num [actualInsideStripMode, pow_succ, Complex.mul_re, Complex.mul_im]
  rw [actualLeadingComplexCoefficient_eq actualInsideStripMode_re_pos, h3, h5]
  apply Complex.ext <;> norm_num [Complex.div_re, Complex.div_im, Complex.normSq]

/-- The ordinary square, with no conjugation, has a negative real coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualInsideStripKernelNegativeSequence/Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261fce18e3b19f753f085af6c88fec70fe69f63c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
