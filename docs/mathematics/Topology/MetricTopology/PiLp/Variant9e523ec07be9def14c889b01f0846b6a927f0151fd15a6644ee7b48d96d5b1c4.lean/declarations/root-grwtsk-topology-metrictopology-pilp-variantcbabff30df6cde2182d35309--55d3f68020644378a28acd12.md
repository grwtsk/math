# _root_.GRWTSK.Topology.MetricTopology.PiLp.Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.LinearIsometryEquiv.piLpCurry_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6f7cc7a-c7fc-a0dc-c6aa-37695642e559",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.PiLp.Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.LinearIsometryEquiv.piLpCurry_symm_apply",
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
  "slug": "root-grwtsk-topology-metrictopology-pilp-variantcbabff30df6cde2182d35309--55d3f68020644378a28acd12",
  "source": {
    "blob": "d42dadc5111b1ba499ffed8b1946d5ec64cf1994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 987,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d3f68020644378a28acd12b90d6f25ca92b8fe7298f9c10b6fa70914d3f84c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6f7cc7a-c7fc-a0dc-c6aa-37695642e559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem _root_.GRWTSK.Topology.MetricTopology.PiLp.Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.LinearIsometryEquiv.piLpCurry_symm_apply
    (f : PiLp p (fun i => PiLp p (α i))) :
    (_root_.GRWTSK.Topology.MetricTopology.PiLp.Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.LinearIsometryEquiv.piLpCurry 𝕜 p α).symm f =
      toLp p (Sigma.uncurry fun i j => f i j) :=
  rfl

end piLpCurry

section sumPiLpEquivProdLpPiLp

variable {ι κ : Type*} (p : ℝ≥0∞) (α : ι ⊕ κ → Type*) [Fintype ι] [Fintype κ] [Fact (1 ≤ p)]
variable [∀ i, SeminormedAddCommGroup (α i)] [∀ i, Module 𝕜 (α i)]

/-- `LinearEquiv.sumPiEquivProdPi` for `PiLp`, as an isometry. -/
@[simps! +simpRhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42dadc5111b1ba499ffed8b1946d5ec64cf1994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
