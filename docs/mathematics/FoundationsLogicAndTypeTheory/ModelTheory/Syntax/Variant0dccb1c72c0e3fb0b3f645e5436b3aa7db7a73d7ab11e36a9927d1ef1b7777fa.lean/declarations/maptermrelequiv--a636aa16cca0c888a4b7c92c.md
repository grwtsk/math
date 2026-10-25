# mapTermRelEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77ecfb1a07ab92c63d895a3ec5a2beef592404d24c1e1d13093bb60c46a76d53",
  "kind": "def",
  "lexical_name": "mapTermRelEquiv",
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
  "slug": "maptermrelequiv--a636aa16cca0c888a4b7c92c",
  "source": {
    "blob": "eb03458f17ddff175671ca8a55480002b36a3248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a636aa16cca0c888a4b7c92c62e66792a42cb4f2f9a21069ce72903e44e14a53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77ecfb1a07ab92c63d895a3ec5a2beef592404d24c1e1d13093bb60c46a76d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTermRelEquiv (ft : ∀ n, L.Term (α ⊕ (Fin n)) ≃ L'.Term (β ⊕ (Fin n)))
    (fr : ∀ n, L.Relations n ≃ L'.Relations n) {n} : L.BoundedFormula α n ≃ L'.BoundedFormula β n :=
  ⟨mapTermRel (fun n => ft n) (fun n => fr n) fun _ => id,
    mapTermRel (fun n => (ft n).symm) (fun n => (fr n).symm) fun _ => id, fun φ => by simp, fun φ =>
    by simp⟩

/-- A function to help relabel the variables in bounded formulas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant0dccb1c72c0e3fb0b3f645e5436b3aa7db7a73d7ab11e36a9927d1ef1b7777fa.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb03458f17ddff175671ca8a55480002b36a3248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
