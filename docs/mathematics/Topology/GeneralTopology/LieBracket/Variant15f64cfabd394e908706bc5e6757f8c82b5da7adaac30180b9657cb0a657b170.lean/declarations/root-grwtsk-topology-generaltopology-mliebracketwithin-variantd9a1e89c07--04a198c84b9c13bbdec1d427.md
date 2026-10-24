# _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContDiff.mlieBracket_vectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12724e9f-7fa4-de4b-2573-30ed41f5bdbd",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContDiff.mlieBracket_vectorField",
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
  "slug": "root-grwtsk-topology-generaltopology-mliebracketwithin-variantd9a1e89c07--04a198c84b9c13bbdec1d427",
  "source": {
    "blob": "eb4094d30dcab94a65ddfc8516caaaf81e8ee127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 831,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04a198c84b9c13bbdec1d427f8f1008f3d0db0ea06d14704663a1f4bd33140ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12724e9f-7fa4-de4b-2573-30ed41f5bdbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContDiff.mlieBracket_vectorField {m n : ℕ∞}
    [IsManifold I (n + 1) M] {U V : Π (x : M), TangentSpace I x}
    (hU : ContMDiff I I.tangent n (fun x ↦ (U x : TangentBundle I M)))
    (hV : ContMDiff I I.tangent n (fun x ↦ (V x : TangentBundle I M)))
    (hmn : minSmoothness 𝕜 (m + 1) ≤ n) :
    ContMDiff I I.tangent m (fun x ↦ (mlieBracket I U V x : TangentBundle I M)) := by
  simp only [← contMDiffOn_univ, mlieBracketWithin_univ] at hU hV ⊢
  exact hU.mlieBracketWithin_vectorField hV uniqueMDiffOn_univ hmn

end Invariance

section Leibniz

variable [IsManifold I (minSmoothness 𝕜 3) M] [CompleteSpace E]

/-- The Lie bracket of vector fields in manifolds satisfies the Leibniz identity
`[U, [V, W]] = [[U, V], W] + [V, [U, W]]` (also called Jacobi identity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4094d30dcab94a65ddfc8516caaaf81e8ee127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
