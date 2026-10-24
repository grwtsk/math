# mem_comp_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cba0cb4-0f73-e418-dc1e-34f1751b9967",
  "kind": "theorem",
  "lexical_name": "mem_comp_comp",
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
  "slug": "mem-comp-comp--d936d5be16fd6e059200c6ca",
  "source": {
    "blob": "1a802f9c93d7c3ba70440448f5cb8b5bd1512a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 616,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d936d5be16fd6e059200c6ca253264ac58cb89c92d854b91575451d1e5701078",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cba0cb4-0f73-e418-dc1e-34f1751b9967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_comp_comp {V W M : Set (β × β)} (hW' : IsSymmetricRel W) {p : β × β} :
    p ∈ V ○ M ○ W ↔ (ball p.1 V ×ˢ ball p.2 W ∩ M).Nonempty := by
  obtain ⟨x, y⟩ := p
  constructor
  · rintro ⟨z, ⟨w, hpw, hwz⟩, hzy⟩
    exact ⟨(w, z), ⟨hpw, by rwa [mem_ball_symmetry hW']⟩, hwz⟩
  · rintro ⟨⟨w, z⟩, ⟨w_in, z_in⟩, hwz⟩
    rw [mem_ball_symmetry hW'] at z_in
    exact ⟨z, ⟨w, w_in, hwz⟩, z_in⟩

end UniformSpace

/-!
### Neighborhoods in uniform spaces
-/

open UniformSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a802f9c93d7c3ba70440448f5cb8b5bd1512a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
