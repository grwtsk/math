# halfTwist_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8f76773-b562-238f-9c83-6921de7d2a2d",
  "kind": "theorem",
  "lexical_name": "halfTwist_sq",
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
  "slug": "halftwist-sq--3e325f6a7d8846d4c9c2842f",
  "source": {
    "blob": "9a50ecfb402109cac3b7cb585dec0b3704c85f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e325f6a7d8846d4c9c2842fca95feb317a1600f9328c8c22b9c073f06b8cc3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8f76773-b562-238f-9c83-6921de7d2a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfTwist_sq : halfTwist^2 = fullTwist := by
  unfold halfTwist fullTwist
  rw [pow_two]
  calc
    (sigma1*sigma2*sigma1)*(sigma1*sigma2*sigma1) =
        (sigma1*sigma2*sigma1)*(sigma2*sigma1*sigma2) :=
      congrArg (fun x : B3 => (sigma1*sigma2*sigma1)*x) braid_relation
    _ = (sigma1*sigma2)^3 := by simp only [pow_succ,pow_zero,one_mul,mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt06/Variantb659bcd247137ce6e49b68735bf5680931e55a56aa99203d81ef61c6c9364985.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a50ecfb402109cac3b7cb585dec0b3704c85f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
