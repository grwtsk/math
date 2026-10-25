# le_total_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7912f2fc-e09a-a261-7aa4-f00977004053",
  "kind": "theorem",
  "lexical_name": "le_total_of_le_of_le",
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
  "slug": "le-total-of-le-of-le--6af139f739017384f08d1994",
  "source": {
    "blob": "26e0b8cc5fdaafe547d3146c13c8e5543d767ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant64888cbb8dd3d8933cb61918927d720a9e8122e409e3a5cbea4b54da2e2764df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6af139f739017384f08d1994da420a4ce52aa612b6d5fe6eded1256146dfdee5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant64888cbb8dd3d8933cb61918927d720a9e8122e409e3a5cbea4b54da2e2764df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7912f2fc-e09a-a261-7aa4-f00977004053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_total_of_le_of_le {x y : Part α} (z : Part α) (hx : x ≤ z) (hy : y ≤ z) :
    x ≤ y ∨ y ≤ x := by
  rcases Part.eq_none_or_eq_some x with (h | ⟨b, h₀⟩)
  · rw [h]
    left
    apply OrderBot.bot_le _
  right; intro b' h₁
  rw [Part.eq_some_iff] at h₀
  have hx := hx _ h₀; have hy := hy _ h₁
  have hx := Part.mem_unique hx hy; subst hx
  exact h₀

/-- `assert p f` is a bind-like operation which appends an additional condition
  `p` to the domain and uses `f` to produce the value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant64888cbb8dd3d8933cb61918927d720a9e8122e409e3a5cbea4b54da2e2764df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant64888cbb8dd3d8933cb61918927d720a9e8122e409e3a5cbea4b54da2e2764df.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e0b8cc5fdaafe547d3146c13c8e5543d767ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
