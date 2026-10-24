# ker_ne_bot_of_finrank_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefb630c-94e2-6c04-ddd5-a3be27d1c5f3",
  "kind": "lemma",
  "lexical_name": "ker_ne_bot_of_finrank_lt",
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
  "slug": "ker-ne-bot-of-finrank-lt--e683b3a8da6388c96b3f70f8",
  "source": {
    "blob": "c592adb9eb5e1eec28da9bfa3ec335213e6977d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e683b3a8da6388c96b3f70f8759ddcc85bbe7d1ad4248074747892972ca61552",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefb630c-94e2-6c04-ddd5-a3be27d1c5f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_ne_bot_of_finrank_lt [FiniteDimensional K V] [FiniteDimensional K V₂] {f : V →ₗ[K] V₂}
    (h : finrank K V₂ < finrank K V) :
    LinearMap.ker f ≠ ⊥ := by
  have h₁ := f.finrank_range_add_finrank_ker
  have h₂ : finrank K (LinearMap.range f) ≤ finrank K V₂ := (LinearMap.range f).finrank_le
  suffices 0 < finrank K (LinearMap.ker f) from Submodule.one_le_finrank_iff.mp this
  omega

end DivisionRing

end LinearMap

open Module

namespace LinearMap

variable [DivisionRing K] [AddCommGroup V] [Module K V] {V₂ : Type v'} [AddCommGroup V₂]
  [Module K V₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c592adb9eb5e1eec28da9bfa3ec335213e6977d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
