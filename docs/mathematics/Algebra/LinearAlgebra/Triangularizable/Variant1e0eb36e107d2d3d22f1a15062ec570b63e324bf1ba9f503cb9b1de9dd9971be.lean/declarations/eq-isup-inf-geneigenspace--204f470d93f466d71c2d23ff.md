# eq_iSup_inf_genEigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a05863c588ce3164b2db9c2017fcf73d003eaccb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db713ce9-79cd-21ed-f70d-6d51d4407a22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e79c4fa-9c65-3fbc-c88d-9c40938ed57c",
  "kind": "theorem",
  "lexical_name": "eq_iSup_inf_genEigenspace",
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
  "slug": "eq-isup-inf-geneigenspace--204f470d93f466d71c2d23ff",
  "source": {
    "blob": "a05863c588ce3164b2db9c2017fcf73d003eaccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:204f470d93f466d71c2d23ff4546672923b508508a70a2408208a59431be34e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e79c4fa-9c65-3fbc-c88d-9c40938ed57c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iSup_inf_genEigenspace [FiniteDimensional K V] (k : ℕ∞)
    (h : ∀ x ∈ p, f x ∈ p) (h' : ⨆ μ, f.genEigenspace μ k = ⊤) :
    p = ⨆ μ, p ⊓ f.genEigenspace μ k := by
  rw [← inf_iSup_genEigenspace h, h', inf_top_eq]

end Submodule

/-- In finite dimensions, if the generalized eigenspaces of a linear endomorphism span the whole
space then the same is true of its restriction to any invariant submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a05863c588ce3164b2db9c2017fcf73d003eaccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
