# glueDist_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae71392b-8b2b-9c98-03b2-b596d1eb3d42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b244a41f-9d59-ddae-d65b-41e04f952625",
  "kind": "theorem",
  "lexical_name": "glueDist_triangle",
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
  "slug": "gluedist-triangle--be584d0e5960ef9f49b45ebc",
  "source": {
    "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 129,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be584d0e5960ef9f49b45ebc45804ba3400f8127cb81b2c2c83cbd4edcff1ec3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b244a41f-9d59-ddae-d65b-41e04f952625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem glueDist_triangle (Φ : Z → X) (Ψ : Z → Y) (ε : ℝ)
    (H : ∀ p q, |dist (Φ p) (Φ q) - dist (Ψ p) (Ψ q)| ≤ 2 * ε) :
    ∀ x y z, glueDist Φ Ψ ε x z ≤ glueDist Φ Ψ ε x y + glueDist Φ Ψ ε y z
  | .inl _, .inl _, .inl _ => dist_triangle _ _ _
  | .inr _, .inr _, .inr _ => dist_triangle _ _ _
  | .inr x, .inl y, .inl z => by
    simp only [← glueDist_swap Φ]
    apply glueDist_triangle_inl_inr_inr
  | .inr x, .inr y, .inl z => by
    simpa only [glueDist_comm, add_comm] using glueDist_triangle_inl_inr_inr _ _ _ z y x
  | .inl x, .inl y, .inr z => by
    simpa only [← glueDist_swap Φ, glueDist_comm, add_comm, Sum.swap_inl, Sum.swap_inr]
      using glueDist_triangle_inl_inr_inr Ψ Φ ε z y x
  | .inl _, .inr _, .inr _ => glueDist_triangle_inl_inr_inr ..
  | .inl x, .inr y, .inl z => glueDist_triangle_inl_inr_inl Φ Ψ ε H x y z
  | .inr x, .inl y, .inr z => by
    simp only [← glueDist_swap Φ]
    apply glueDist_triangle_inl_inr_inl
    simpa only [abs_sub_comm]

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f1399586e311fd245c703d54ed8c0728c617c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
