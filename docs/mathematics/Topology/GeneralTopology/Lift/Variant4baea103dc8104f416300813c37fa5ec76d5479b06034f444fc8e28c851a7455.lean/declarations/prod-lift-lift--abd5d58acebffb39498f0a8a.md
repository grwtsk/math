# prod_lift_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cce126a3c518a1b0d699208940f4ad202ed5593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff3434d7-0c3a-5474-40cc-aa0f7a4be92a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff6b6ebc-5fdd-be53-5544-c333f016e6fc",
  "kind": "theorem",
  "lexical_name": "prod_lift_lift",
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
  "slug": "prod-lift-lift--abd5d58acebffb39498f0a8a",
  "source": {
    "blob": "8cce126a3c518a1b0d699208940f4ad202ed5593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 367,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abd5d58acebffb39498f0a8ac2a50f037394fc4ed9a2e6e3b776783bedd7c56b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6b6ebc-5fdd-be53-5544-c333f016e6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_lift_lift {f₁ : Filter α₁} {f₂ : Filter α₂} {g₁ : Set α₁ → Filter β₁}
    {g₂ : Set α₂ → Filter β₂} (hg₁ : Monotone g₁) (hg₂ : Monotone g₂) :
    f₁.lift g₁ ×ˢ f₂.lift g₂ = f₁.lift fun s => f₂.lift fun t => g₁ s ×ˢ g₂ t := by
  simp only [prod_def, lift_assoc hg₁]
  apply congr_arg; funext x
  rw [lift_comm]
  apply congr_arg; funext y
  apply lift'_lift_assoc hg₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cce126a3c518a1b0d699208940f4ad202ed5593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
