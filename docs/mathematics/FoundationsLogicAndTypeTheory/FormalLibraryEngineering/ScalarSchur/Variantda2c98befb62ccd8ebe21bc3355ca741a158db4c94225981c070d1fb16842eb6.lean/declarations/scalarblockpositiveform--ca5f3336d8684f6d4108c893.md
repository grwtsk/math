# scalarBlockPositiveForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4595cea2cb39d1d66ec6e541d2c2ab00e05c695e1f98d6cb7c32f02b65924b3",
  "kind": "def",
  "lexical_name": "scalarBlockPositiveForm",
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
  "slug": "scalarblockpositiveform--ca5f3336d8684f6d4108c893",
  "source": {
    "blob": "e6019e8f3b1feb16eed941c53fd646231a45f58f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca5f3336d8684f6d4108c89314c0804fcc6b23f0c2ed9b7c11cecb2dae34b120",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4595cea2cb39d1d66ec6e541d2c2ab00e05c695e1f98d6cb7c32f02b65924b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def scalarBlockPositiveForm (a b c : ℝ)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    PositiveForm (ℝ × ℝ) where
  form := scalarBlockForm a b c
  add_left x y z := by
    simp [scalarBlockForm]
    ring
  smul_left r x y := by
    simp [scalarBlockForm]
    ring
  add_right x y z := by
    simp [scalarBlockForm]
    ring
  smul_right r x y := by
    simp [scalarBlockForm]
    ring
  symmetric x y := by
    simp [scalarBlockForm]
    ring
  nonnegative := hpos

/-- The canonical one-dimensional provenance projection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6019e8f3b1feb16eed941c53fd646231a45f58f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
