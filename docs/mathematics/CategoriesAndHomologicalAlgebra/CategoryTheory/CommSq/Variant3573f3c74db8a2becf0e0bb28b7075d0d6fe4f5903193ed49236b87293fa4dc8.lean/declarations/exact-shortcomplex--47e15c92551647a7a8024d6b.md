# exact_shortComplex'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5faa2abcf5b612ebef79ccded38329f634fdbb88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a0f2b2e-d0e1-c95c-c3f6-56e2804adeb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:756a7db2-f6dc-8e41-db3e-3999df5fc5a8",
  "kind": "lemma",
  "lexical_name": "exact_shortComplex'",
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
  "slug": "exact-shortcomplex--47e15c92551647a7a8024d6b",
  "source": {
    "blob": "5faa2abcf5b612ebef79ccded38329f634fdbb88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e15c92551647a7a8024d6b997d2a58670e8c49b643c28deedf5e872bc9ba94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:756a7db2-f6dc-8e41-db3e-3999df5fc5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact_shortComplex' (h : IsPullback t l r b) : h.shortComplex'.Exact :=
  h.shortComplex'.exact_of_f_is_kernel
    h.isLimitKernelFork

/-!
Note: if `h : IsPullback t l r b`, then `X₁ ⟶ X₂ ⊞ X₃` is a monomorphism,
which can be translated in concrete terms thanks to the lemma `IsPullback.hom_ext`:
if a morphism `f : Z ⟶ X₁` becomes zero after composing with `X₁ ⟶ X₂` and
`X₁ ⟶ X₃`, then `f = 0`. This is the reason why we do not state the dual
statement to `IsPushout.hom_eq_add_up_to_refinements`.
-/

end IsPullback


end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5faa2abcf5b612ebef79ccded38329f634fdbb88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
