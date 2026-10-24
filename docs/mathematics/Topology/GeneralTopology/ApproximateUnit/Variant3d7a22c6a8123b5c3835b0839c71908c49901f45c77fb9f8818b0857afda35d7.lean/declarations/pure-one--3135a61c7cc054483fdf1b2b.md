# pure_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b40eadc-e893-992e-e266-d07757554d0d",
  "kind": "lemma",
  "lexical_name": "pure_one",
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
  "slug": "pure-one--3135a61c7cc054483fdf1b2b",
  "source": {
    "blob": "ea918994fce91465b3822c97a0f2af0e641f63cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3135a61c7cc054483fdf1b2b463513eb05d8f18eecc9fa4c6f50ab9c843e7986",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b40eadc-e893-992e-e266-d07757554d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pure_one (A : Type*) [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A] :
    (pure 1 : Filter A).IsIncreasingApproximateUnit where
  toIsApproximateUnit := .pure_one A
  eventually_nonneg := by simp
  eventually_norm := by nontriviality A; simp

end Filter.IsIncreasingApproximateUnit

namespace CStarAlgebra

open Submodule in
/-- To show that `l` is a one-sided approximate unit for `A`, it suffices to verify it only for
`m : A` with `0 ≤ m` and `‖m‖ < 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea918994fce91465b3822c97a0f2af0e641f63cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
