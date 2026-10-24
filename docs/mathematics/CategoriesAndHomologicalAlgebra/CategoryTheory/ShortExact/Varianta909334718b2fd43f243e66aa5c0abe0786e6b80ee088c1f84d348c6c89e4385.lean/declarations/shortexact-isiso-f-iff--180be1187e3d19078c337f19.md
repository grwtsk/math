# ShortExact.isIso_f_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d283c1-f762-dcae-986f-ab8e0bfbbebe",
  "kind": "lemma",
  "lexical_name": "ShortExact.isIso_f_iff",
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
  "slug": "shortexact-isiso-f-iff--180be1187e3d19078c337f19",
  "source": {
    "blob": "dc07497b23cb40a605583ffe9cd0ca9fa0deb3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180be1187e3d19078c337f19294079b3495e2fd91380745f300121363b7bd761",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d283c1-f762-dcae-986f-ab8e0bfbbebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortExact.isIso_f_iff {S : ShortComplex C} (hS : S.ShortExact) [Balanced C] :
    IsIso S.f ↔ IsZero S.X₃ := by
  have := hS.exact.hasZeroObject
  have := hS.mono_f
  have := hS.epi_g
  constructor
  · intro hf
    simp only [IsZero.iff_id_eq_zero, ← cancel_epi S.g, ← cancel_epi S.f,
      S.zero_assoc, zero_comp]
  · intro hX₃
    have : Epi S.f := (S.exact_iff_epi (hX₃.eq_of_tgt _ _)).1 hS.exact
    apply isIso_of_mono_of_epi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc07497b23cb40a605583ffe9cd0ca9fa0deb3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
