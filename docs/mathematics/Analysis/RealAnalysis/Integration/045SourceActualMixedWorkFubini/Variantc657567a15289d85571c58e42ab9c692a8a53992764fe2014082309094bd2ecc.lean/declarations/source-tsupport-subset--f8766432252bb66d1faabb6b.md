# source_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17b4ce64-bd29-2088-54f7-d305e995de3c",
  "kind": "theorem",
  "lexical_name": "source_tsupport_subset",
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
  "slug": "source-tsupport-subset--f8766432252bb66d1faabb6b",
  "source": {
    "blob": "9928acffee7661a6b59bfbd4388d357adcbce672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8766432252bb66d1faabb6ba639fdc465e6e2c1531128cf9a946476e6d7c763",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b4ce64-bd29-2088-54f7-d305e995de3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (normalizedTest explicitSecondDerivative A) ⊆ Icc (-A) A := by
  apply closure_minimal _ isClosed_Icc
  intro x hx
  by_contra hnot
  have habs : A ≤ |x| := by
    by_cases hleft : -A ≤ x
    · have hright : A < x := lt_of_not_ge (fun h => hnot ⟨hleft, h⟩)
      exact hright.le.trans (le_abs_self x)
    · have hleft' : x < -A := lt_of_not_ge hleft
      have h := neg_le_abs x
      linarith
  exact hx (normalizedTest_zero_of_le_abs A x hA habs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantc657567a15289d85571c58e42ab9c692a8a53992764fe2014082309094bd2ecc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9928acffee7661a6b59bfbd4388d357adcbce672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
