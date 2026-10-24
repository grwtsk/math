# changeFrames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de9bd1a6dbbe92ceb949ca40fe5b158abe72ea6e382f460a6cbc94521f4de7f1",
  "kind": "def",
  "lexical_name": "changeFrames",
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
  "slug": "changeframes--28a311f95185abe17ff9d8ff",
  "source": {
    "blob": "02bce81ab498f01b07b51b41e21eed45bcc2e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 189,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28a311f95185abe17ff9d8ffdc0519cb20e96fb8e87091605981b9e22d82cf1a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de9bd1a6dbbe92ceb949ca40fe5b158abe72ea6e382f460a6cbc94521f4de7f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeFrames (C : Cocycle D) (h : ∀ i, (HolomorphicSection (D.U i))ˣ) : Cocycle D where
  transition i j :=
    GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom (D.rightToOverlap i j)
        (h j : HolomorphicSection (D.U j)) * C.transition i j *
      GRWTSK.Analysis.Complex.HolomorphicSectionRing.restrictionRingHom (D.leftToOverlap i j)
        (↑((h i)⁻¹) : HolomorphicSection (D.U i))
  diagonal := by
    intro i z hi
    change unitValue (h i) ⟨z, hi⟩ *
      (C.transition i i : Section (D.overlap i i)) ⟨z, hi, hi⟩ *
        unitValue (h i)⁻¹ ⟨z, hi⟩ = 1
    rw [C.diagonal i z hi, mul_one, unitValue_mul_inv]
  compose := by
    intro i j k z hi hj hk
    change
      (unitValue (h k) ⟨z, hk⟩ *
          (C.transition j k : Section (D.overlap j k)) ⟨z, hj, hk⟩ *
          unitValue (h j)⁻¹ ⟨z, hj⟩) *
        (unitValue (h j) ⟨z, hj⟩ *
          (C.transition i j : Section (D.overlap i j)) ⟨z, hi, hj⟩ *
          unitValue (h i)⁻¹ ⟨z, hi⟩) =
      unitValue (h k) ⟨z, hk⟩ *
        (C.transition i k : Section (D.overlap i k)) ⟨z, hi, hk⟩ *
        unitValue (h i)⁻¹ ⟨z, hi⟩
    calc
      _ = (unitValue (h k) ⟨z, hk⟩ *
          ((C.transition j k : Section (D.overlap j k)) ⟨z, hj, hk⟩ *
            (C.transition i j : Section (D.overlap i j)) ⟨z, hi, hj⟩) *
          unitValue (h i)⁻¹ ⟨z, hi⟩) *
        (unitValue (h j)⁻¹ ⟨z, hj⟩ * unitValue (h j) ⟨z, hj⟩) := by ring
      _ = _ := by rw [unitValue_inv_mul, mul_one, C.compose i j k z hi hj hk]

/-- The constructed change of frames is equipped with its actual gauge witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02bce81ab498f01b07b51b41e21eed45bcc2e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
