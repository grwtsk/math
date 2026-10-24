# adjoin_monomial_eq_reesAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8b3a485-0606-d2ca-25fb-80e972501e95",
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
  "slug": "adjoin-monomial-eq-reesalgebra--ea23a6e22977670a8e453f7a",
  "source": {
    "blob": "e46b5a6861b9f582e8f964cfa94db357adea7b54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea23a6e22977670a8e453f7acdc052a23dc828e2af86b88cd79002ab5902134b",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8b3a485-0606-d2ca-25fb-80e972501e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

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

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant70301db4f41ea6d813a4f103bd7d1d0365efa7d976772419cc6d1044b745d752.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46b5a6861b9f582e8f964cfa94db357adea7b54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
