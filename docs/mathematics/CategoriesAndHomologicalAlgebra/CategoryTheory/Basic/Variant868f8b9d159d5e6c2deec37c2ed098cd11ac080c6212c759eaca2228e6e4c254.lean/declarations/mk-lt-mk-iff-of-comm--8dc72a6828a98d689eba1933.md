# mk_lt_mk_iff_of_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d0051ca-7ee5-15c5-c248-02940074ed2e",
  "kind": "lemma",
  "lexical_name": "mk_lt_mk_iff_of_comm",
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
  "slug": "mk-lt-mk-iff-of-comm--8dc72a6828a98d689eba1933",
  "source": {
    "blob": "98f39721c7365bc4cd6498f33ea3f49fbc031f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc72a6828a98d689eba1933b331a56713ce9fe7cd55e38040b3ef73ee1ffba1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d0051ca-7ee5-15c5-c248-02940074ed2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_lt_mk_iff_of_comm {X A₁ A₂ : C} {i₁ : A₁ ⟶ X} {i₂ : A₂ ⟶ X} [Mono i₁] [Mono i₂]
    (f : A₁ ⟶ A₂) (fac : f ≫ i₂ = i₁) :
    Subobject.mk i₁ < Subobject.mk i₂ ↔ ¬ IsIso f :=
  ⟨fun h hf ↦ by simp only [mk_eq_mk_of_comm i₁ i₂ (asIso f) fac, lt_self_iff_false] at h,
    mk_lt_mk_of_comm f fac⟩

end Subobject

namespace MonoOver

variable {P Q : MonoOver X} (f : P ⟶ Q)

include f in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant868f8b9d159d5e6c2deec37c2ed098cd11ac080c6212c759eaca2228e6e4c254.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f39721c7365bc4cd6498f33ea3f49fbc031f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
