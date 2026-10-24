# support_single_add_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e679f8-a0c7-1458-8d6a-610be01bc914",
  "kind": "lemma",
  "lexical_name": "support_single_add_single",
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
  "slug": "support-single-add-single--f399b03e12f09bcf4bfa5657",
  "source": {
    "blob": "e2a50abac2b1b01e109693d19e3a021fcec0fa9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f399b03e12f09bcf4bfa5657bc7b48cae0fa539d980d1a18e8a6467491fcf900",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49e679f8-a0c7-1458-8d6a-610be01bc914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_single_add_single [DecidableEq ι] {f₁ f₂ : ι} {g₁ g₂ : M}
    (H : f₁ ≠ f₂) (hg₁ : g₁ ≠ 0) (hg₂ : g₂ ≠ 0) :
    (single f₁ g₁ + single f₂ g₂).support = {f₁, f₂} := by
  rw [support_add_eq, support_single _ hg₁, support_single _ hg₂]
  · simp
  · simp [support_single, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variantc05b42f828cfa63f30226ba4b7bb15e78df79faedb23507c1e355067f717e66e.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a50abac2b1b01e109693d19e3a021fcec0fa9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
