# stdSimplexEquivIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5201dbf23f2f46d8b3823a9fe8dbeefc7c2b267c920608e0029d616512e5deb1",
  "kind": "def",
  "lexical_name": "stdSimplexEquivIcc",
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
  "slug": "stdsimplexequivicc--c104a669c57601bf18b8ddd1",
  "source": {
    "blob": "c7f9b7d0aca42f7db84a2c58337e85c54285cb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c104a669c57601bf18b8ddd13e9fa3fab52d90831084523ddcc7d91b09ce502d",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5201dbf23f2f46d8b3823a9fe8dbeefc7c2b267c920608e0029d616512e5deb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stdSimplexEquivIcc : stdSimplex 𝕜 (Fin 2) ≃ Icc (0 : 𝕜) 1 where
  toFun f := ⟨f.1 1, f.2.1 _, f.2.2 ▸
    Finset.single_le_sum (fun i _ ↦ f.2.1 i) (Finset.mem_univ _)⟩
  invFun x := ⟨![1 - x, x], Fin.forall_fin_two.2 ⟨sub_nonneg.2 x.2.2, x.2.1⟩, by simp⟩
  left_inv f := Subtype.ext <| funext <| Fin.forall_fin_two.2 <| by
    simp [← (show f.1 0 + f.1 1 = 1 by simpa using f.2.2)]

@[simp, deprecated StdSimplex.equivIcc_single_zero (since := "2026-08-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/StdSimplex/Variant98c0c604f99cda00d2e0b1a05c8cc71013cf946709a155fcd4e40ca6a6201b08.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f9b7d0aca42f7db84a2c58337e85c54285cb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
