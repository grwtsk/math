# smulLeftCLM_compL_smulLeftCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ce2dbb3-434c-8a19-7ded-bd5f8c34cb5b",
  "kind": "theorem",
  "lexical_name": "smulLeftCLM_compL_smulLeftCLM",
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
  "slug": "smulleftclm-compl-smulleftclm--18ba3ed21d251f0ca136a06a",
  "source": {
    "blob": "6358790f10f8e7d38ca7415dfb54bbeb81a18baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 774,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ba3ed21d251f0ca136a06a45b68d035b0d6bfaaa8c7774f88d33a00a052444",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ce2dbb3-434c-8a19-7ded-bd5f8c34cb5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulLeftCLM_compL_smulLeftCLM {g₁ g₂ : E → 𝕜} (hg₁ : g₁.HasTemperateGrowth)
    (hg₂ : g₂.HasTemperateGrowth) :
    smulLeftCLM F g₁ ∘L smulLeftCLM F g₂ = smulLeftCLM F (g₁ * g₂) := by
  ext1 f
  exact smulLeftCLM_smulLeftCLM_apply hg₁ hg₂ f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6358790f10f8e7d38ca7415dfb54bbeb81a18baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
