# norm_eq_one_of_not_module_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3df771e30ea7965188aa4582b94a6a3a2bb275ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3ed3392-a436-5d81-bc09-afaa2a04498c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1eae3b-62de-dad9-814e-e20b6cedfe2f",
  "kind": "theorem",
  "lexical_name": "norm_eq_one_of_not_module_finite",
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
  "slug": "norm-eq-one-of-not-module-finite--2ff0a981ba3b6495e8c170c9",
  "source": {
    "blob": "3df771e30ea7965188aa4582b94a6a3a2bb275ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff0a981ba3b6495e8c170c9b69e7895cd30cf144925cabb0ac2f8b4398d2fa6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1eae3b-62de-dad9-814e-e20b6cedfe2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_one_of_not_module_finite (h : ¬Module.Finite R S) (x : S) : norm R x = 1 := by
  refine norm_eq_one_of_not_exists_basis _ (mt ?_ h) _
  rintro ⟨s, ⟨b⟩⟩
  exact Module.Finite.of_basis b

-- Can't be a `simp` lemma because it depends on a choice of basis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant59365ae15613b3073ed34a7466a49304d085174e7192136ed69085388ad73d49.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df771e30ea7965188aa4582b94a6a3a2bb275ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
