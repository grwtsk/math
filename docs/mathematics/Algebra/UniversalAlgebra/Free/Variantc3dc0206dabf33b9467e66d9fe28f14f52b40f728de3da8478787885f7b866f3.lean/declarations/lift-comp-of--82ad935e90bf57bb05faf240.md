# lift_comp_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e0f70dd2f5170a840a31ad3cf8f0298fa113812",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:591d7b89-714e-28b0-17cc-c0744e9b652a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef22794-3364-75f1-640c-90ea317a106d",
  "kind": "theorem",
  "lexical_name": "lift_comp_of",
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
  "slug": "lift-comp-of--82ad935e90bf57bb05faf240",
  "source": {
    "blob": "3e0f70dd2f5170a840a31ad3cf8f0298fa113812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 262,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82ad935e90bf57bb05faf2408b4fd856a4d6fbf70aa769cf45ea5a56efcebc43",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef22794-3364-75f1-640c-90ea317a106d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_comp_of (F : FreeLieAlgebra R X →ₗ⁅R⁆ L) : lift R (F ∘ of R) = F := by
  rw [← lift_symm_apply]; exact (lift R).apply_symm_apply F
#align free_lie_algebra.lift_comp_of FreeLieAlgebra.lift_comp_of

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variantc3dc0206dabf33b9467e66d9fe28f14f52b40f728de3da8478787885f7b866f3.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e0f70dd2f5170a840a31ad3cf8f0298fa113812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
