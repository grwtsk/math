# domRestrict_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834c3e48-02fb-452f-61ac-b9dc131084b0",
  "kind": "theorem",
  "lexical_name": "domRestrict_eq_one_iff",
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
  "slug": "domrestrict-eq-one-iff--18ba7340275a4145501a8256",
  "source": {
    "blob": "1a4f9d43e29eae9bcb559cf515bfcbc90efdae91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 437,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18ba7340275a4145501a8256e274fe959280e01e7fc3d5f8514839af12bf6f4e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834c3e48-02fb-452f-61ac-b9dc131084b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrict_eq_one_iff {S : Type*} [SetLike S R] [SubmonoidClass S R] {T : S}
    {χ : MulChar R R'} : χ.domRestrict T = 1 ↔ ∀ x : Tˣ, χ x = 1 := by
  simp [eq_one_iff]

@[deprecated (since := "2026-07-19")] alias restrict_eq_one_iff := domRestrict_eq_one_iff

end nontrivial

section quadratic_and_comp

variable {R : Type*} [CommMonoid R] {R' : Type*} [CommRing R'] {R'' : Type*} [CommRing R'']

/-- A multiplicative character is *quadratic* if it takes only the values `0`, `1`, `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a4f9d43e29eae9bcb559cf515bfcbc90efdae91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
