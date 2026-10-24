# exists_infIrred_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa88b27-02c9-1a2f-19b7-8c63042a1b6a",
  "kind": "theorem",
  "lexical_name": "exists_infIrred_decomposition",
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
  "slug": "exists-infirred-decomposition--1aafe546b230c1b8384e10c5",
  "source": {
    "blob": "bae312273ebf8070c287b85f9cc994dffb74877b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aafe546b230c1b8384e10c5fcf677cf33a1f8beb4a5e8fefd8afdb8c35afe94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa88b27-02c9-1a2f-19b7-8c63042a1b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_infIrred_decomposition (a : α) :
    ∃ s : Finset α, s.inf id = a ∧ ∀ ⦃b⦄, b ∈ s → InfIrred b :=
  exists_supIrred_decomposition (α := αᵒᵈ) _

end SemilatticeInf

section SemilatticeSup

variable [SemilatticeSup α]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bae312273ebf8070c287b85f9cc994dffb74877b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
