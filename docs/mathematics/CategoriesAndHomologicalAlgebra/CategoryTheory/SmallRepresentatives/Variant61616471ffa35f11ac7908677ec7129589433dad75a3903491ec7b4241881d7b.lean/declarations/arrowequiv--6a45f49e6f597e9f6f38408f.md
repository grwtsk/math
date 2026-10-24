# arrowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcdd585b3f09e1c969d73541e29634c8d7515603d72fcaea9b903aab21c96678",
  "kind": "def",
  "lexical_name": "arrowEquiv",
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
  "slug": "arrowequiv--6a45f49e6f597e9f6f38408f",
  "source": {
    "blob": "bd3ca4fde9d26586b72530568ce567701680b4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a45f49e6f597e9f6f38408f0a836a37332b4e3bc7c42a104f7b1b1d43287e85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcdd585b3f09e1c969d73541e29634c8d7515603d72fcaea9b903aab21c96678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def arrowEquiv : Arrow h.smallCategoryOfSet.obj ≃ Arrow C :=
  Equiv.ofBijective h.functor.mapArrow.obj (by
    constructor
    · rintro ⟨x, y, f⟩ ⟨x', y', g⟩ hfg
      obtain rfl : x = x' := by simpa using! congr_arg Arrow.leftFunc.obj hfg
      obtain rfl : y = y' := by simpa using! congr_arg Arrow.rightFunc.obj hfg
      obtain rfl : f = g := by simpa [Arrow.mk_eq_mk_iff] using! hfg
      rfl
    · rintro ⟨X, Y, f⟩
      obtain ⟨x, rfl⟩ := h.objEquiv.surjective X
      obtain ⟨y, rfl⟩ := h.objEquiv.surjective Y
      obtain ⟨f, rfl⟩ := h.homEquiv.surjective f
      exact ⟨Arrow.mk f, rfl⟩)

end CoreSmallCategoryOfSet

namespace SmallCategoryOfSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd3ca4fde9d26586b72530568ce567701680b4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
