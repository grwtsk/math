# Saturate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fa0a3f42407401972a94bbb1e2eca9701bf7d1294d320541eb4f9cad60b0e2f",
  "kind": "inductive",
  "lexical_name": "Saturate",
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
  "slug": "saturate--d8dade67f9e3377f9c7135ba",
  "source": {
    "blob": "00bf0da536dbd538c0d37e6d10a8db7875604927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8dade67f9e3377f9c7135ba55fa5ba23cea29129ad9befb88e304f406405ac3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fa0a3f42407401972a94bbb1e2eca9701bf7d1294d320541eb4f9cad60b0e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Saturate (K : Coverage C) : (X : C) → Sieve X → Prop where
  | of (X : C) (S : Presieve X) (hS : S ∈ K X) : Saturate K X (Sieve.generate S)
  | top (X : C) : Saturate K X ⊤
  | transitive (X : C) (R S : Sieve X) :
    Saturate K X R →
    (∀ ⦃Y : C⦄ ⦃f : Y ⟶ X⦄, R f → Saturate K Y (S.pullback f)) →
    Saturate K X S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant4758fe511a563fd637e48ab41ba5c6202cca831933e9b4c41578abf64e86f294.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00bf0da536dbd538c0d37e6d10a8db7875604927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
