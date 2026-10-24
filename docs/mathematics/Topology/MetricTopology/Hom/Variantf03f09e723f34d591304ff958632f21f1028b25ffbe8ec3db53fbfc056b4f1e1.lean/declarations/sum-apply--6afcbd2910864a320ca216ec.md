# sum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15fb44a-4af3-21d8-7b6e-cc68d4b9ff9f",
  "kind": "theorem",
  "lexical_name": "sum_apply",
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
  "slug": "sum-apply--6afcbd2910864a320ca216ec",
  "source": {
    "blob": "073d37e15a7ac212a199eaa0b3f763ba7b3e97ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 545,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variantf03f09e723f34d591304ff958632f21f1028b25ffbe8ec3db53fbfc056b4f1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6afcbd2910864a320ca216eca9db42cd34e91c03bf23126b39e091530131b2d4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variantf03f09e723f34d591304ff958632f21f1028b25ffbe8ec3db53fbfc056b4f1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15fb44a-4af3-21d8-7b6e-cc68d4b9ff9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_apply {ι : Type*} (s : Finset ι) (f : ι → NormedAddGroupHom V₁ V₂) (v : V₁) :
    (∑ i ∈ s, f i) v = ∑ i ∈ s, f i v := by simp only [coe_sum, Finset.sum_apply]

/-! ### Module structure on normed group homs -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variantf03f09e723f34d591304ff958632f21f1028b25ffbe8ec3db53fbfc056b4f1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variantf03f09e723f34d591304ff958632f21f1028b25ffbe8ec3db53fbfc056b4f1e1.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `073d37e15a7ac212a199eaa0b3f763ba7b3e97ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
