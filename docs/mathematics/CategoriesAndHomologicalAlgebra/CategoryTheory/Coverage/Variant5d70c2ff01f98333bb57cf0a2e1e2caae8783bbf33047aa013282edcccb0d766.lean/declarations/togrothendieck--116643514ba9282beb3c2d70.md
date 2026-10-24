# toGrothendieck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d797fbb4e3eca6d62e9cf58d65c48879b0e168641d89530b7aac9639aacfb39",
  "kind": "def",
  "lexical_name": "toGrothendieck",
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
  "slug": "togrothendieck--116643514ba9282beb3c2d70",
  "source": {
    "blob": "93b544a90e4c8fc6af8f7b29045f9b8484689c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:116643514ba9282beb3c2d70aa02c26f3cfdd69916f4f77424993bdfe62b1478",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d797fbb4e3eca6d62e9cf58d65c48879b0e168641d89530b7aac9639aacfb39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGrothendieck (K : Coverage C) : GrothendieckTopology C where
  sieves := saturate K
  top_mem' := .top
  pullback_stable' := by
    intro X Y S f hS
    induction hS generalizing Y with
    | of X S hS =>
      obtain ⟨R,hR1,hR2⟩ := K.pullback f S hS
      suffices Sieve.generate R ≤ (Sieve.generate S).pullback f from
        saturate_of_superset _ this (saturate.of _ _ hR1)
      rintro Z g ⟨W, i, e, h1, h2⟩
      obtain ⟨WW, ii, ee, hh1, hh2⟩ := hR2 h1
      refine ⟨WW, i ≫ ii, ee, hh1, ?_⟩
      simp only [hh2, reassoc_of% h2, Category.assoc]
    | top X => apply saturate.top
    | transitive X R S _ hS H1 _ =>
      apply saturate.transitive
      apply H1 f
      intro Z g hg
      rw [← Sieve.pullback_comp]
      exact hS hg
  transitive' X S hS R hR := .transitive _ _ _ hS hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b544a90e4c8fc6af8f7b29045f9b8484689c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
