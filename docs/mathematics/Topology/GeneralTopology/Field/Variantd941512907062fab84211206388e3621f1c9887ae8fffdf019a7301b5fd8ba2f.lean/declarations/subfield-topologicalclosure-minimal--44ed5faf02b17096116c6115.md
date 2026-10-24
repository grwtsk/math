# Subfield.topologicalClosure_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5bb7331-eb43-dcaf-340e-b4c07e14b46a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b286610a-82a3-21a0-83ea-71bd45d3d6e2",
  "kind": "theorem",
  "lexical_name": "Subfield.topologicalClosure_minimal",
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
  "slug": "subfield-topologicalclosure-minimal--44ed5faf02b17096116c6115",
  "source": {
    "blob": "f98c66552079474e8610fcdac05d432bfccc7365",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ed5faf02b17096116c611536f3c3af35b283a8deed6a92003dd361caf3bcb4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b286610a-82a3-21a0-83ea-71bd45d3d6e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subfield.topologicalClosure_minimal (s : Subfield α) {t : Subfield α} (h : s ≤ t)
    (ht : IsClosed (t : Set α)) : s.topologicalClosure ≤ t :=
  closure_minimal h ht
#align subfield.topological_closure_minimal Subfield.topologicalClosure_minimal

end Subfield

section affineHomeomorph

/-!
This section is about affine homeomorphisms from a topological field `𝕜` to itself.
Technically it does not require `𝕜` to be a topological field, a topological ring that
happens to be a field is enough.
-/


variable {𝕜 : Type*} [Field 𝕜] [TopologicalSpace 𝕜] [TopologicalRing 𝕜]

/--
The map `fun x => a * x + b`, as a homeomorphism from `𝕜` (a topological field) to itself,
when `a ≠ 0`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variantd941512907062fab84211206388e3621f1c9887ae8fffdf019a7301b5fd8ba2f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98c66552079474e8610fcdac05d432bfccc7365` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
