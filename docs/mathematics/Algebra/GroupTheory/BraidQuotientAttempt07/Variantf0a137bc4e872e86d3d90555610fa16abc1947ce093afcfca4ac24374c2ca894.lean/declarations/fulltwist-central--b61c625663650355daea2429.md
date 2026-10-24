# fullTwist_central

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51488510-3192-0f2c-6616-9300a5d8cfd7",
  "kind": "theorem",
  "lexical_name": "fullTwist_central",
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
  "slug": "fulltwist-central--b61c625663650355daea2429",
  "source": {
    "blob": "5812ac06c1579a94e76296ad687c3c9939b4d94d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b61c625663650355daea24293f7653b506ca9ab332dd943a05906e2eb88c8557",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51488510-3192-0f2c-6616-9300a5d8cfd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullTwist_central (x:B3) : fullTwist*x = x*fullTwist := by
  have hx := PresentedGroup.generated_by braidRelations (Subgroup.centralizer {fullTwist})
    (fun i => by
      apply Subgroup.mem_centralizer_singleton_iff.mpr
      fin_cases i
      · exact fullTwist_commute_sigma1.symm
      · exact fullTwist_commute_sigma2.symm) x
  exact (Subgroup.mem_centralizer_singleton_iff.mp hx).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5812ac06c1579a94e76296ad687c3c9939b4d94d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
