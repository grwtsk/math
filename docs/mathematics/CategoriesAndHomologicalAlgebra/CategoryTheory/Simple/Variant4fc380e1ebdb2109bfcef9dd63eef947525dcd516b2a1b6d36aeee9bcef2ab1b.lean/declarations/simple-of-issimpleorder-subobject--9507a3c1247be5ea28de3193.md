# simple_of_isSimpleOrder_subobject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b80e25ff-f655-0ffa-b2fe-b52088c0276a",
  "kind": "theorem",
  "lexical_name": "simple_of_isSimpleOrder_subobject",
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
  "slug": "simple-of-issimpleorder-subobject--9507a3c1247be5ea28de3193",
  "source": {
    "blob": "9588ceff867217308e165ad7ea62331663bd5630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9507a3c1247be5ea28de3193d560716935400017374f33c64d951e692a95436b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b80e25ff-f655-0ffa-b2fe-b52088c0276a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_of_isSimpleOrder_subobject (X : C) [IsSimpleOrder (Subobject X)] : Simple X := by
  constructor; intros Y f hf; constructor
  · intro i
    rw [Subobject.isIso_iff_mk_eq_top] at i
    intro w
    rw [← Subobject.mk_eq_bot_iff_zero] at w
    exact IsSimpleOrder.bot_ne_top (w.symm.trans i)
  · intro i
    rcases IsSimpleOrder.eq_bot_or_eq_top (Subobject.mk f) with (h | h)
    · rw [Subobject.mk_eq_bot_iff_zero] at h
      exact False.elim (i h)
    · exact (Subobject.isIso_iff_mk_eq_top _).mpr h
#align category_theory.simple_of_is_simple_order_subobject CategoryTheory.simple_of_isSimpleOrder_subobject

/-- `X` is simple iff it has subobject lattice `{⊥, ⊤}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant4fc380e1ebdb2109bfcef9dd63eef947525dcd516b2a1b6d36aeee9bcef2ab1b.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9588ceff867217308e165ad7ea62331663bd5630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
