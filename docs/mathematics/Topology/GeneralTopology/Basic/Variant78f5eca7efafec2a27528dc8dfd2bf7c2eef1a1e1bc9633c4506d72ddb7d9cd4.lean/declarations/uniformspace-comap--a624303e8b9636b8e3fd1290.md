# UniformSpace.comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96588532426d8b92b0379b5e8d87f4065cd9332c9f25eaeefdbda37e2b4036d5",
  "kind": "abbrev",
  "lexical_name": "UniformSpace.comap",
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
  "slug": "uniformspace-comap--a624303e8b9636b8e3fd1290",
  "source": {
    "blob": "24e49871f060d354d1fb66058d9e35e6fcce9a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 417,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a624303e8b9636b8e3fd1290dec3e13ec378f2df9829447cfcf8c3ef8b97fbc8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96588532426d8b92b0379b5e8d87f4065cd9332c9f25eaeefdbda37e2b4036d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev UniformSpace.comap (f : α → β) (u : UniformSpace β) : UniformSpace α where
  uniformity := 𝓤[u].comap fun p : α × α => (f p.1, f p.2)
  symm := by
    simp only [tendsto_comap_iff]
    exact tendsto_swap_uniformity.comp tendsto_comap
  comp := le_trans
    (by
      rw [comap_lift'_eq, comap_lift'_eq2]
      · exact lift'_mono' fun s _ ⟨a₁, a₂⟩ ⟨x, h₁, h₂⟩ => ⟨f x, h₁, h₂⟩
      · exact monotone_id.relComp monotone_id)
    (comap_mono u.comp)
  toTopologicalSpace := u.toTopologicalSpace.induced f
  nhds_eq_comap_uniformity x := by
    simp only [nhds_induced, nhds_eq_comap_uniformity, comap_comap, Function.comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant78f5eca7efafec2a27528dc8dfd2bf7c2eef1a1e1bc9633c4506d72ddb7d9cd4.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e49871f060d354d1fb66058d9e35e6fcce9a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
