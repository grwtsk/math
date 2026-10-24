# extend_Z_bilin_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a872101e79d8fbb752f2279b62d0b99d65d1e3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54ab8080-b33a-0d85-1109-312a52013251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:040941f5-fd34-b899-ba46-671e18674ee5",
  "kind": "theorem",
  "lexical_name": "extend_Z_bilin_aux",
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
  "slug": "extend-z-bilin-aux--ef85f2b9c66df6cc66adb712",
  "source": {
    "blob": "8a872101e79d8fbb752f2279b62d0b99d65d1e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef85f2b9c66df6cc66adb71221242d5a5d148ad853c62e869d40b03f4062dcf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:040941f5-fd34-b899-ba46-671e18674ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extend_Z_bilin_aux (x₀ : α) (y₁ : δ) : ∃ U₂ ∈ comap e (𝓝 x₀), ∀ x ∈ U₂, ∀ x' ∈ U₂,
    (fun p : β × δ => φ p.1 p.2) (x' - x, y₁) ∈ W' := by
  let Nx := 𝓝 x₀
  let ee := fun u : β × β => (e u.1, e u.2)
  have lim1 : Tendsto (fun a : β × β => (a.2 - a.1, y₁))
      (comap e Nx ×ˢ comap e Nx) (𝓝 (0, y₁)) := by
    have := Tendsto.prodMk (tendsto_sub_comap_self de x₀)
      (tendsto_const_nhds : Tendsto (fun _ : β × β => y₁) (comap ee <| 𝓝 (x₀, x₀)) (𝓝 y₁))
    rw [nhds_prod_eq, prod_comap_comap_eq, ← nhds_prod_eq]
    exact (this :)
  have lim2 : Tendsto (fun p : β × δ => φ p.1 p.2) (𝓝 (0, y₁)) (𝓝 0) := by
    simpa using hφ.tendsto (0, y₁)
  have lim := lim2.comp lim1
  rw [tendsto_prod_self_iff] at lim
  simp_rw [forall_mem_comm]
  exact lim W' W'_nhds

variable [IsUniformAddGroup G]

include df W'_nhds in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3417efc06277c9d21cc09b1b7e1697a09997b64de89eb2f08b73e238b439cf95.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a872101e79d8fbb752f2279b62d0b99d65d1e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
