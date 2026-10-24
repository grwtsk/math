# adjoin_monomial_eq_reesAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c982206b-010c-aedd-f8bb-327358708429",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f590c72-93b2-4d34-9e28-e0c4bfbe6f31",
  "kind": "theorem",
  "lexical_name": "adjoin_monomial_eq_reesAlgebra",
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
  "slug": "adjoin-monomial-eq-reesalgebra--98607c70b6a1e9b28fbbb9b2",
  "source": {
    "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98607c70b6a1e9b28fbbb9b2bbe7013245d6df2fecefc629414af735a203af10",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f590c72-93b2-4d34-9e28-e0c4bfbe6f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_monomial_eq_reesAlgebra :
    Algebra.adjoin R (Submodule.map (monomial 1 : R →ₗ[R] R[X]) I : Set R[X]) = reesAlgebra I := by
  apply le_antisymm
  · apply Algebra.adjoin_le _
    rintro _ ⟨r, hr, rfl⟩
    exact reesAlgebra.monomial_mem.mpr (by rwa [pow_one])
  · intro p hp
    rw [p.as_sum_support]
    apply Subalgebra.sum_mem _ _
    rintro i -
    exact monomial_mem_adjoin_monomial (hp i)
#align adjoin_monomial_eq_rees_algebra adjoin_monomial_eq_reesAlgebra

variable {I}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
