# fullTwist_commute_sigma1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9615d247-4b46-5d27-f72f-c67c8183000f",
  "kind": "theorem",
  "lexical_name": "fullTwist_commute_sigma1",
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
  "slug": "fulltwist-commute-sigma1--bd0e9313392466432336372b",
  "source": {
    "blob": "50a25e9c87aa86656b847bc90f7c473c4ce033df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0e9313392466432336372bb99f22fb82784a0c136ce1561a3e38b2bbb6b135",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9615d247-4b46-5d27-f72f-c67c8183000f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullTwist_commute_sigma1 : fullTwist*sigma1 = sigma1*fullTwist := by
  rw [←halfTwist_sq,pow_two]
  calc
    (halfTwist*halfTwist)*sigma1 = halfTwist*(halfTwist*sigma1) := mul_assoc _ _ _
    _ = halfTwist*(sigma2*halfTwist) := congrArg (fun x:B3=>halfTwist*x) halfTwist_swap_sigma1
    _ = (halfTwist*sigma2)*halfTwist := (mul_assoc _ _ _).symm
    _ = (sigma1*halfTwist)*halfTwist := congrArg (fun x:B3=>x*halfTwist) halfTwist_swap_sigma2
    _ = sigma1*(halfTwist*halfTwist) := mul_assoc _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantc05ef290d2a22cedd81e2d0502b4423d8b7dda9916389732b4e93e3c9a1fd0af.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a25e9c87aa86656b847bc90f7c473c4ce033df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
