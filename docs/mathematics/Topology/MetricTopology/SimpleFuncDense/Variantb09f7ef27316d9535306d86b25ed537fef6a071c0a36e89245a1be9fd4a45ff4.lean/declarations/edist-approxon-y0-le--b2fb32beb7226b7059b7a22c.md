# edist_approxOn_y0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d38fe21a-dc03-fa10-9a7c-b515fe217c09",
  "kind": "theorem",
  "lexical_name": "edist_approxOn_y0_le",
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
  "slug": "edist-approxon-y0-le--b2fb32beb7226b7059b7a22c",
  "source": {
    "blob": "c6d89689f908d86b05fc4e444cfe9fc2173ce05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 187,
    "path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2fb32beb7226b7059b7a22c1c22dc8c20150862ce8528477da3f9433a70b3d3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38fe21a-dc03-fa10-9a7c-b515fe217c09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_approxOn_y0_le {f : β → α} (hf : Measurable f) {s : Set α} {y₀ : α} (h₀ : y₀ ∈ s)
    [SeparableSpace s] (x : β) (n : ℕ) :
    edist y₀ (approxOn f hf s y₀ h₀ n x) ≤ edist y₀ (f x) + edist y₀ (f x) :=
  calc
    edist y₀ (approxOn f hf s y₀ h₀ n x) ≤
        edist y₀ (f x) + edist (approxOn f hf s y₀ h₀ n x) (f x) :=
      edist_triangle_right _ _ _
    _ ≤ edist y₀ (f x) + edist y₀ (f x) := add_le_add_left (edist_approxOn_le hf h₀ x n) _

#align measure_theory.simple_func.edist_approx_on_y0_le MeasureTheory.SimpleFunc.edist_approxOn_y0_le

end SimpleFunc

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d89689f908d86b05fc4e444cfe9fc2173ce05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
