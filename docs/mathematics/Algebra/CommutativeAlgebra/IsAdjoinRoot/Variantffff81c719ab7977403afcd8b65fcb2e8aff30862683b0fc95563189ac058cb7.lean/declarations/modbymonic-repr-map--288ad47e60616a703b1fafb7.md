# modByMonic_repr_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a317046e79ece819b1b4c062642ba7dbb5cf52d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 319,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9017bea3-8b10-6754-a85c-4d14f8857cc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a905d55-0486-6884-9200-1906f7ee3374",
  "kind": "theorem",
  "lexical_name": "modByMonic_repr_map",
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
  "slug": "modbymonic-repr-map--288ad47e60616a703b1fafb7",
  "source": {
    "blob": "7a317046e79ece819b1b4c062642ba7dbb5cf52d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 319,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:288ad47e60616a703b1fafb7cd745f2975511c724024f0f325ac16d9ce8aa82b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a905d55-0486-6884-9200-1906f7ee3374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modByMonic_repr_map (h : IsAdjoinRootMonic S f) (g : R[X]) :
    h.repr (h.map g) %ₘ f = g %ₘ f :=
  modByMonic_eq_of_dvd_sub h.Monic <| by rw [← h.mem_ker_map, RingHom.sub_mem_ker_iff, map_repr]

/-- `IsAdjoinRoot.modByMonicHom` sends the equivalence class of `f` mod `g` to `f %ₘ g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variantffff81c719ab7977403afcd8b65fcb2e8aff30862683b0fc95563189ac058cb7.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a317046e79ece819b1b4c062642ba7dbb5cf52d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
