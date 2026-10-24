# Subfield.topologicalClosure_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55c405d2-1976-b618-620c-646d79472f0c",
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
  "slug": "subfield-topologicalclosure-minimal--7bd9968c44f9a36654c3bb4f",
  "source": {
    "blob": "f5481ee5b7b30d5e22d61d8e6f0c7796ecd7cb06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd9968c44f9a36654c3bb4f846dc81835c809f17b08f706af304c2ccea77df0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c405d2-1976-b618-620c-646d79472f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–101.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variantff2ed4d5dffc598767cee7d1a8fe61b3fbe4c47a011c0f669743ab157be93f46.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5481ee5b7b30d5e22d61d8e6f0c7796ecd7cb06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
