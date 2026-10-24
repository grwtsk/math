# finite_of_degree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06f31384-cd23-a539-765a-996461533dd7",
  "kind": "theorem",
  "lexical_name": "finite_of_degree_le",
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
  "slug": "finite-of-degree-le--23683b551cfc3f0d22572f3e",
  "source": {
    "blob": "0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 250,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23683b551cfc3f0d22572f3e2817a352e8e39a4805835f0b3ffbe6fdaa7eb7e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06f31384-cd23-a539-765a-996461533dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_degree_le [Finite σ] (n : ℕ) :
    {f : σ →₀ ℕ | degree f ≤ n}.Finite := by
  simp_rw [degree_eq_weight_one]
  refine finite_of_nat_weight_le (Function.const σ 1) ?_ n
  intro _
  simp only [Function.const_apply, ne_eq, one_ne_zero, not_false_eq_true]

end Finsupp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantf6a1217730bf310b78c0b30fc08401e1d949e127f20338f4f1853ef0a7144d12.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f46f382cbcc1c0618a76b8bc8c53b7d9eccccf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
