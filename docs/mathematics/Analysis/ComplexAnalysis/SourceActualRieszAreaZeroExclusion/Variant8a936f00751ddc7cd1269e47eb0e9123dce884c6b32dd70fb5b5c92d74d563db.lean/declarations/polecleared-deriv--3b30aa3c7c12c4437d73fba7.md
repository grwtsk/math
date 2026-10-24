# poleCleared_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bf3af46-222d-5fe9-4fb8-d275eafb9346",
  "kind": "theorem",
  "lexical_name": "poleCleared_deriv",
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
  "slug": "polecleared-deriv--3b30aa3c7c12c4437d73fba7",
  "source": {
    "blob": "3254e09b8547eda7f36c21edf41ce1b4e91054d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b30aa3c7c12c4437d73fba7d618a32dfc27a33665755e49f0672e18ac9526ab",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf3af46-222d-5fe9-4fb8-d275eafb9346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem poleCleared_deriv {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    deriv actualZetaPoleCleared s = riemannZeta s + (s - 1) * deriv riemannZeta s := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 s] fun w => (w - 1) * riemannZeta w := by
    filter_upwards [eventually_ne_nhds hs0, eventually_ne_nhds hs1] with w hw0 hw1
    exact actualZetaPoleCleared_eq hw0 hw1
  rw [he.deriv_eq]
  have hd := ((hasDerivAt_id s).sub_const 1).mul
    (differentiableAt_riemannZeta hs1).hasDerivAt
  simpa only [Pi.mul_apply, sub_zero, one_mul] using! hd.deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant8a936f00751ddc7cd1269e47eb0e9123dce884c6b32dd70fb5b5c92d74d563db.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3254e09b8547eda7f36c21edf41ce1b4e91054d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
