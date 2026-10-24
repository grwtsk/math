# norm_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb4ebda0d1f44635b775f6808f8dbbe1273c8bb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0b3ef03-8be9-0b80-fcae-e7f9723f6141",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ebeeaaf-c898-77da-ebae-394939a7e1ee",
  "kind": "lemma",
  "lexical_name": "norm_smul",
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
  "slug": "norm-smul--3cfff61ae79315d9d058e0f6",
  "source": {
    "blob": "bb4ebda0d1f44635b775f6808f8dbbe1273c8bb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cfff61ae79315d9d058e0f6d46930d782d13b4a89ca01aca9b1625385f72b6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ebeeaaf-c898-77da-ebae-394939a7e1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma norm_smul {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℂ E]
    (u : Circle) (v : E) :
    ‖u • v‖ = ‖v‖ := by
  rw [Submonoid.smul_def, norm_smul, norm_eq_of_mem_sphere, one_mul]

end Circle

namespace Real

/-- The additive character from `ℝ` onto the circle, given by `fun x ↦ exp (2 * π * x * I)`.
Denoted as `𝐞` within the `Real.FourierTransform` namespace. This uses the analyst convention that
there is a `2 * π` in the exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variant708ae1d69ae3d23a4cff07f2db2675d0ba13df2d7cbaecd90b480a519f112a1c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4ebda0d1f44635b775f6808f8dbbe1273c8bb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
