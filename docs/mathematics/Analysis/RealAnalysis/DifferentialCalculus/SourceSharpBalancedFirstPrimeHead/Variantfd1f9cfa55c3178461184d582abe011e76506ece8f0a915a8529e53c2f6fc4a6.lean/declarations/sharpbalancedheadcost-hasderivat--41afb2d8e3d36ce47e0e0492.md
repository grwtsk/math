# sharpBalancedHeadCost_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cf6b16e-fe88-0aaa-da73-82b6e591f4e1",
  "kind": "theorem",
  "lexical_name": "sharpBalancedHeadCost_hasDerivAt",
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
  "slug": "sharpbalancedheadcost-hasderivat--41afb2d8e3d36ce47e0e0492",
  "source": {
    "blob": "fb099cfdc3e38ca3ab8da87b28606e8306e3d7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variantfd1f9cfa55c3178461184d582abe011e76506ece8f0a915a8529e53c2f6fc4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41afb2d8e3d36ce47e0e04920ca984a1c908619fe469a7d4be432a5d8fae9dda",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variantfd1f9cfa55c3178461184d582abe011e76506ece8f0a915a8529e53c2f6fc4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cf6b16e-fe88-0aaa-da73-82b6e591f4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpBalancedHeadCost_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt sharpBalancedHeadCost
      (20 * (1 - Real.log A) / A^2 +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2) / A^3) A := by
  have hl := Real.hasDerivAt_log hA.ne'
  unfold sharpBalancedHeadCost
  convert! (((hl.const_mul 20).div (hasDerivAt_id A) hA.ne').sub
    (((((hl.const_mul 2).add (hl.pow 2)).sub_const ((Real.log 7)^2 / 4)).const_mul
      (10 * Real.sqrt 7)).div ((hasDerivAt_id A).pow 2) (pow_ne_zero 2 hA.ne'))) using 1
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variantfd1f9cfa55c3178461184d582abe011e76506ece8f0a915a8529e53c2f6fc4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variantfd1f9cfa55c3178461184d582abe011e76506ece8f0a915a8529e53c2f6fc4a6.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb099cfdc3e38ca3ab8da87b28606e8306e3d7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
