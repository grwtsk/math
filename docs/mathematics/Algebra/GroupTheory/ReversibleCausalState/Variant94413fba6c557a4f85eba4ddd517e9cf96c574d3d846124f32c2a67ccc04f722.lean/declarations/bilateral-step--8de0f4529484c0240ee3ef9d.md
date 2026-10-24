# bilateral_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ccf577090d83b9b11228ce4649120cbba87c1f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5c02f71-a4a8-2afe-1983-44aa9190c558",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:147fb3c6-f89b-5038-a062-c59f68d9c78e",
  "kind": "theorem",
  "lexical_name": "bilateral_step",
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
  "slug": "bilateral-step--8de0f4529484c0240ee3ef9d",
  "source": {
    "blob": "4ccf577090d83b9b11228ce4649120cbba87c1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de0f4529484c0240ee3ef9d0177c7a3c69919a42fd299c110e33ac3e78ec9f3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147fb3c6-f89b-5038-a062-c59f68d9c78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bilateral_step
    (G : ReversibleSystem State Resolution)
    {x y : State}
    (h : G.BilateralCausalEquivalent x y) :
    G.BilateralCausalEquivalent (G.step x) (G.step y) := by
  constructor
  · intro t ρ
    simpa [pow_succ, Equiv.Perm.mul_apply] using h.1 (t + 1) ρ
  · intro t ρ
    cases t with
    | zero =>
        simpa using h.1 1 ρ
    | succ t =>
        simpa [pow_succ, Equiv.Perm.mul_apply] using h.2 t ρ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant94413fba6c557a4f85eba4ddd517e9cf96c574d3d846124f32c2a67ccc04f722.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ccf577090d83b9b11228ce4649120cbba87c1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
