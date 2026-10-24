# contMDiff_denom_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:243d596e-6d68-c50a-cf61-44647942ef84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:254e7423-0130-4697-8302-59ff2923c62c",
  "kind": "lemma",
  "lexical_name": "contMDiff_denom_zpow",
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
  "slug": "contmdiff-denom-zpow--c9c626a923d4040acd816f2b",
  "source": {
    "blob": "7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c626a923d4040acd816f2b4ef9bd396abbdea415b6bb4a5ad86edb826f9282",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:254e7423-0130-4697-8302-59ff2923c62c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_denom_zpow (g : GL (Fin 2) ℝ) (k : ℤ) : CMDiff n (denom g · ^ k : ℍ → ℂ) := by
  intro τ
  have : AnalyticAt ℂ (· ^ k) (denom g τ) := (differentiableOn_zpow k _ (by tauto)).analyticOnNhd
    isOpen_compl_singleton _ (denom_ne_zero g τ)
  exact this.contDiffAt.contMDiffAt.comp τ (contMDiff_denom g τ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variantbec5e7354f0c232ed1fda0f290a7c2a839f7160951836217a9d56c0d2aba90c4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5bf1f96ef9ad5e04e639c4c7097162b04d0bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
