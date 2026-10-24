# quasiIso_truncLEMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21a01b11-c90f-babe-9e5b-3ac68a3dbbce",
  "kind": "lemma",
  "lexical_name": "quasiIso_truncLEMap_iff",
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
  "slug": "quasiiso-trunclemap-iff--f86aac3a0648d402acef49eb",
  "source": {
    "blob": "1088f6d858e07df08db2ad27545e115645baf715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86aac3a0648d402acef49ebd40d5d57ed7410020b91e42a2d0cd742d2f83835",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a01b11-c90f-babe-9e5b-3ac68a3dbbce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_truncLEMap_iff :
    QuasiIso (truncLEMap φ n) ↔ ∀ (i : ℤ) (_ : i ≤ n), QuasiIsoAt φ i := by
  rw [HomologicalComplex.quasiIso_truncLEMap_iff]
  constructor
  · intro h i hi
    obtain ⟨k, rfl⟩ := Int.le.dest hi
    exact h k _ (by dsimp; omega)
  · rintro h i i' rfl
    exact h _ (by dsimp; omega)

end

end HasZeroMorphisms

section Preadditive

variable [Preadditive C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1088f6d858e07df08db2ad27545e115645baf715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
