# adjoin_one_tmul_image_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e549ef97a68a9bb720c7f22873d34d5e29f310c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da0a7d3987f1db51af0c5467bdd216f48356df29aaf0e96c336f30642aca1acd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fb2ea00-2b9a-f101-bc3e-beaaa126411e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:830eea68-42e2-f36d-3cef-4e0b3e7ad6b5",
  "kind": "lemma",
  "lexical_name": "adjoin_one_tmul_image_eq_top",
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
  "slug": "adjoin-one-tmul-image-eq-top--58de7ec0a03c7e65e81743e0",
  "source": {
    "blob": "4e549ef97a68a9bb720c7f22873d34d5e29f310c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 540,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantda0a7d3987f1db51af0c5467bdd216f48356df29aaf0e96c336f30642aca1acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58de7ec0a03c7e65e81743e0eeeab6510ae0b2dcf1631d8f600ffcf6e648d2fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantda0a7d3987f1db51af0c5467bdd216f48356df29aaf0e96c336f30642aca1acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830eea68-42e2-f36d-3cef-4e0b3e7ad6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjoin_one_tmul_image_eq_top [CommSemiring R] [CommSemiring A]
    [Semiring B] [Algebra R A] [Algebra R B]
    (s : Set B) (hs : adjoin R s = ⊤) : adjoin A (((1 : A) ⊗ₜ[R] ·) '' s) = ⊤ := by
  suffices h : adjoin A ((⊤ : Subalgebra R B).map (includeRight (A := A)) : Set (A ⊗[R] B)) = ⊤ by
    simp [← h, ← hs, AlgHom.map_adjoin, adjoin_adjoin_of_tower]
  rw [← Algebra.toSubmodule_eq_top, ← top_le_iff, Algebra.map_top, ← Submodule.baseChange_top,
    Submodule.baseChange_eq_span, Submodule.map_top]
  exact span_le_adjoin _ _

variable [CommSemiring R] [CommSemiring S] [Algebra R S]

/-- If `M` is a `B`-module that is also an `A`-module, the canonical map
`M →ₗ[A] B ⊗[A] M` is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantda0a7d3987f1db51af0c5467bdd216f48356df29aaf0e96c336f30642aca1acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantda0a7d3987f1db51af0c5467bdd216f48356df29aaf0e96c336f30642aca1acd.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e549ef97a68a9bb720c7f22873d34d5e29f310c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
