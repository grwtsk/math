# lf_asymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20fcf333-c8d5-d448-bfec-9668b39108ec",
  "kind": "theorem",
  "lexical_name": "lf_asymm",
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
  "slug": "lf-asymm--f0dfeaa3d320c71f1b623238",
  "source": {
    "blob": "3343dc47c8e072a76a4d44c98528c1af496b8769",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0dfeaa3d320c71f1b623238e33f1c370b91b8170d00bbae5e93b2ffaf5958f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20fcf333-c8d5-d448-bfec-9668b39108ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lf_asymm {x y : PGame} (ox : Numeric x) (oy : Numeric y) : x ⧏ y → ¬y ⧏ x := by
  refine numeric_rec (C := fun x => ∀ z (_oz : Numeric z), x ⧏ z → ¬z ⧏ x)
    (fun xl xr xL xR hx _oxl _oxr IHxl IHxr => ?_) x ox y oy
  refine numeric_rec fun yl yr yL yR hy oyl oyr _IHyl _IHyr => ?_
  rw [mk_lf_mk, mk_lf_mk]; rintro (⟨i, h₁⟩ | ⟨j, h₁⟩) (⟨i, h₂⟩ | ⟨j, h₂⟩)
  · exact IHxl _ _ (oyl _) (h₁.moveLeft_lf _) (h₂.moveLeft_lf _)
  · exact (le_trans h₂ h₁).not_gf (lf_of_lt (hy _ _))
  · exact (le_trans h₁ h₂).not_gf (lf_of_lt (hx _ _))
  · exact IHxr _ _ (oyr _) (h₁.lf_moveRight _) (h₂.lf_moveRight _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant08df9c6f358654cbd9dbd48a36f4089e8b6c2aece1a9f340d1ecf2df262a7ca6.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3343dc47c8e072a76a4d44c98528c1af496b8769` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
