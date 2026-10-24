# toIcoMod_toIocMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ecbc04cc63ae5ad964418fe89bb64487784f700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a63667a4-a961-4de0-7160-d5bdbbb40ec5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6bd0b9d-dc6c-a4ae-debe-353cad60187f",
  "kind": "theorem",
  "lexical_name": "toIcoMod_toIocMod",
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
  "slug": "toicomod-toiocmod--49e92dfec7b98c5c2d41e878",
  "source": {
    "blob": "5ecbc04cc63ae5ad964418fe89bb64487784f700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 620,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49e92dfec7b98c5c2d41e8781866951492530d366fde5d173dc4f1d51123ebdf",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6bd0b9d-dc6c-a4ae-debe-353cad60187f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIcoMod_toIocMod (a₁ a₂ b : α) : toIcoMod hp a₁ (toIocMod hp a₂ b) = toIcoMod hp a₁ b :=
  (toIcoMod_eq_toIcoMod _).2 ⟨toIocDiv hp a₂ b, self_sub_toIocMod hp a₂ b⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant9cc8dae1c3257db84abdbb8c23ce04d2a92d5ebbdb633496ef284234a53bea8c.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecbc04cc63ae5ad964418fe89bb64487784f700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
