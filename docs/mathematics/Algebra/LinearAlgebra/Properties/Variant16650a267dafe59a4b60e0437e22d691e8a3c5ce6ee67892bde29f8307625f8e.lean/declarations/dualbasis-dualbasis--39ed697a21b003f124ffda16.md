# dualBasis_dualBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fbe6df4c88e582690d3d25800d33539a21d1c2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6ef730d-0b31-cc61-f938-02290f426450",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5026caeb-26ab-7d30-ce40-1e8bfca2857b",
  "kind": "lemma",
  "lexical_name": "dualBasis_dualBasis",
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
  "slug": "dualbasis-dualbasis--39ed697a21b003f124ffda16",
  "source": {
    "blob": "8fbe6df4c88e582690d3d25800d33539a21d1c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 303,
    "path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39ed697a21b003f124ffda1636a1d29797671867e908283367f27c49f51c21af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5026caeb-26ab-7d30-ce40-1e8bfca2857b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualBasis_dualBasis (B : BilinForm K V) (hB : B.Nondegenerate) (hB' : B.IsSymm) {ι}
    [Finite ι] [DecidableEq ι] [FiniteDimensional K V] (b : Basis ι K V) :
    B.dualBasis hB (B.dualBasis hB b) = b := by
  convert dualBasis_dualBasis_flip _ hB.flip b
  rwa [eq_comm, ← isSymm_iff_flip]

end DualBasis

section LinearAdjoints

variable [FiniteDimensional K V]

/-- Given bilinear forms `B₁, B₂` where `B₂` is nondegenerate, `symmCompOfNondegenerate`
is the linear map `B₂ ∘ B₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Properties/Variant16650a267dafe59a4b60e0437e22d691e8a3c5ce6ee67892bde29f8307625f8e.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fbe6df4c88e582690d3d25800d33539a21d1c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
