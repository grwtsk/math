# normalizedBridge_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1c5d78-de68-d993-b355-992b312858dc",
  "kind": "theorem",
  "lexical_name": "normalizedBridge_lipschitz",
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
  "slug": "normalizedbridge-lipschitz--eb4e46c87514939890257b37",
  "source": {
    "blob": "e395408639a2c994510006eed3efb4e8843867fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb4e46c87514939890257b37392c8d247adcd02998d31b675b86e0ba9b21981a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f1c5d78-de68-d993-b355-992b312858dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedBridge_lipschitz {A x y : ℝ} (hA : 0<A)
    (hx : x∈Icc (0:ℝ) 2) (hy : y∈Icc (0:ℝ) 2) :
    |normalizedBridge A y-normalizedBridge A x|≤(389/40:ℝ)*|y-x| := by
  have hs : A*x∈Icc (0:ℝ) (2*A) := by
    constructor
    · exact mul_nonneg hA.le hx.1
    · nlinarith [hx.2]
  have ht : A*y∈Icc (0:ℝ) (2*A) := by
    constructor
    · exact mul_nonneg hA.le hy.1
    · nlinarith [hy.2]
  have hh := actual_bridge_lipschitz hA hs ht
  have he : |A*y-A*x|=A*|y-x| := by rw [← mul_sub,abs_mul,abs_of_pos hA]
  rw [he] at hh
  unfold normalizedBridge
  rw [← sub_div,abs_div,abs_of_pos hA]
  apply (div_le_iff₀ hA).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e395408639a2c994510006eed3efb4e8843867fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
