# mono_cokerToKer'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a163200cb1cc8c5525853eb0abf1ae0f17841d8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4cb6b87f02369fa9d88efc13e503cc8f979aede125d5bd11b6a4a7a08433d599.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:657781f2-b107-4e53-7dde-7275e34a4d55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:939fd6a6-c799-6732-a629-c12608872b73",
  "kind": "lemma",
  "lexical_name": "mono_cokerToKer'",
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
  "slug": "mono-cokertoker--23352a5bf84acc2c9f9355b2",
  "source": {
    "blob": "a163200cb1cc8c5525853eb0abf1ae0f17841d8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variant4cb6b87f02369fa9d88efc13e503cc8f979aede125d5bd11b6a4a7a08433d599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23352a5bf84acc2c9f9355b27a6c48fbde72d9e68fa976980b3c59879092980a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variant4cb6b87f02369fa9d88efc13e503cc8f979aede125d5bd11b6a4a7a08433d599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:939fd6a6-c799-6732-a629-c12608872b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_cokerToKer' (hS' : (S.sc hS k).Exact) :
    Mono (hS.cokerToKer' k hk cc kf hcc hkf) := by
  have := hS'.hasZeroObject
  have := hS'.hasHomology
  let h := hS'.rightHomologyDataOfIsColimitCokernelCofork cc hcc
  have := h.exact_iff_mono_g'.1 hS'
  have fac : hS.cokerToKer' k hk cc kf hcc hkf ≫ kf.ι = h.g' := by
    rw [← cancel_epi h.p, h.p_g', ShortComplex.Exact.rightHomologyDataOfIsColimitCokernelCofork_p,
      cokerToKer'_fac]
  exact mono_of_mono_fac fac

end IsComplex

end Preadditive

section Balanced

variable {C : Type*} [Category C] [Preadditive C] [Balanced C] {n : ℕ}
  {S : ComposableArrows C (n + 3)} (hS : S.Exact)

namespace Exact

section

variable (k : ℕ) (hk : k ≤ n)
  (cc : CokernelCofork (S.map' k (k + 1))) (kf : KernelFork (S.map' (k + 2) (k + 3)))
  (hcc : IsColimit cc) (hkf : IsLimit kf)

/-- If `S` is an exact sequence, this is the morphism from a cokernel
of `S.map' k (k + 1)` to a kernel of `S.map' (k + 2) (k + 3)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variant4cb6b87f02369fa9d88efc13e503cc8f979aede125d5bd11b6a4a7a08433d599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variant4cb6b87f02369fa9d88efc13e503cc8f979aede125d5bd11b6a4a7a08433d599.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a163200cb1cc8c5525853eb0abf1ae0f17841d8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
