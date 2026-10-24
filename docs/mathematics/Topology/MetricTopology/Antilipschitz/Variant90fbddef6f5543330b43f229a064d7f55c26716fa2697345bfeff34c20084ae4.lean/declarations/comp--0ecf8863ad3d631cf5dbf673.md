# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e443fef-4450-76ad-9798-49c49c65383f",
  "kind": "theorem",
  "lexical_name": "comp",
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
  "slug": "comp--0ecf8863ad3d631cf5dbf673",
  "source": {
    "blob": "fe6af169b9315c13051834b06a4865e1fcde3981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 136,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ecf8863ad3d631cf5dbf67302ed74d7871b06379e3e6f4c533fd11c4166db54",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e443fef-4450-76ad-9798-49c49c65383f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp {Kg : ℝ≥0} {g : β → γ} (hg : AntilipschitzWith Kg g) {Kf : ℝ≥0} {f : α → β}
    (hf : AntilipschitzWith Kf f) : AntilipschitzWith (Kf * Kg) (g ∘ f) := fun x y =>
  calc
    edist x y ≤ Kf * edist (f x) (f y) := hf x y
    _ ≤ Kf * (Kg * edist (g (f x)) (g (f y))) := (ENNReal.mul_left_mono (hg _ _))
    _ = _ := by rw [ENNReal.coe_mul, mul_assoc]; rfl
#align antilipschitz_with.comp AntilipschitzWith.comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6af169b9315c13051834b06a4865e1fcde3981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
