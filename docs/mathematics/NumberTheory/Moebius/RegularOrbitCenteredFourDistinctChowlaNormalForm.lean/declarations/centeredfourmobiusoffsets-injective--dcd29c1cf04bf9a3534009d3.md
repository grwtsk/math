# centeredFourMobiusOffsets_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1478618a-06d8-5f5d-0b01-69cd80937731",
  "kind": "theorem",
  "lexical_name": "centeredFourMobiusOffsets_injective",
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
  "slug": "centeredfourmobiusoffsets-injective--dcd29c1cf04bf9a3534009d3",
  "source": {
    "blob": "c86b2260ef13e4ab4813717f396a9bcaf1e40ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcd29c1cf04bf9a3534009d3c61ea50883cac0a97cd0d5a50e15cb4b3854fa10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1478618a-06d8-5f5d-0b01-69cd80937731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredFourMobiusOffsets_injective
    {ell h g : ℕ}
    (hell : 0 < ell)
    (hh : 0 < h)
    (hg : 0 < g)
    (hnd : ¬ centeredAffineFourMobiusDegenerate ell h g) :
    Function.Injective (centeredFourMobiusOffsets ell h g) := by
  intro i j hij
  fin_cases i <;> fin_cases j <;>
    simp [centeredFourMobiusOffsets, centeredFourMobiusShiftAnchor] at hij ⊢ <;>
    unfold centeredAffineFourMobiusDegenerate at hnd <;>
    omega

/-- Standard finite four-distinct Chowla datum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86b2260ef13e4ab4813717f396a9bcaf1e40ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
