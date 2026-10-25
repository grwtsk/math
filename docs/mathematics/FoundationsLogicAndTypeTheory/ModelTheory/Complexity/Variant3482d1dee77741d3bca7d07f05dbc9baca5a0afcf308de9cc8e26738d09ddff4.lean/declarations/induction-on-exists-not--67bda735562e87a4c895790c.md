# induction_on_exists_not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d824015-6a7c-74a8-4a88-0159fc6a4e16",
  "kind": "theorem",
  "lexical_name": "induction_on_exists_not",
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
  "slug": "induction-on-exists-not--67bda735562e87a4c895790c",
  "source": {
    "blob": "39818c47e82878a87a008a083f6d3bce5b66de10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67bda735562e87a4c895790cbfe69695c6b54d9767249fe0fcb9fb62dd250a56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d824015-6a7c-74a8-4a88-0159fc6a4e16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_exists_not {P : ∀ {m}, L.BoundedFormula α m → Prop} (φ : L.BoundedFormula α n)
    (hqf : ∀ {m} {ψ : L.BoundedFormula α m}, IsQF ψ → P ψ)
    (hnot : ∀ {m} {φ : L.BoundedFormula α m}, P φ → P φ.not)
    (hex : ∀ {m} {φ : L.BoundedFormula α (m + 1)}, P φ → P φ.ex)
    (hse : ∀ {m} {φ₁ φ₂ : L.BoundedFormula α m},
      (φ₁ ⇔[∅] φ₂) → (P φ₁ ↔ P φ₂)) :
    P φ :=
  φ.induction_on_all_ex (fun {_ _} => hqf)
    (fun {_ φ} hφ => (hse φ.all_iff_not_ex_not).2 (hnot (hex (hnot hφ))))
    (fun {_ _} => hex) fun {_ _ _} => hse

/-- A universal formula is a formula defined by applying only universal quantifiers to a
quantifier-free formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39818c47e82878a87a008a083f6d3bce5b66de10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
