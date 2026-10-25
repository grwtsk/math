# piQuotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae18814b171a924dd60bb69d369a86ab19129a81db2701b43a995d5eb35e01c3",
  "kind": "def",
  "lexical_name": "piQuotientEquiv",
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
  "slug": "piquotientequiv--ba26cd15a39d61d13f08621a",
  "source": {
    "blob": "ea54004a26d2b0266aa72d207b1fe98e62478eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba26cd15a39d61d13f08621ac5e01cdda9c4ee1d2fa904d702ea1f539ae85386",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae18814b171a924dd60bb69d369a86ab19129a81db2701b43a995d5eb35e01c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piQuotientEquiv {ι : Sort*} {α : ι → Sort*} (r : ∀ i, Setoid (α i)) :
    (∀ i, Quotient (r i)) ≃ Quotient (@piSetoid _ _ r) where
  toFun x := Quotient.mk'' fun i ↦ (x i).out
  invFun q := Quotient.liftOn' q (fun x i ↦ Quotient.mk'' (x i)) fun x y hxy ↦ by
    ext i
    simpa using hxy i
  left_inv q := by
    ext i
    simp
  right_inv q := by
    refine Quotient.inductionOn' q fun _ ↦ ?_
    simp only [Quotient.liftOn'_mk'', Quotient.eq'']
    intro i
    change Setoid.r _ _
    rw [← Quotient.eq'']
    simp

/-- The infimum of two equivalence relations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant88bbf6cea3aca33e69eb3a34e38c21a0d3138bd83d328162c7ac596ec399c445.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea54004a26d2b0266aa72d207b1fe98e62478eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
