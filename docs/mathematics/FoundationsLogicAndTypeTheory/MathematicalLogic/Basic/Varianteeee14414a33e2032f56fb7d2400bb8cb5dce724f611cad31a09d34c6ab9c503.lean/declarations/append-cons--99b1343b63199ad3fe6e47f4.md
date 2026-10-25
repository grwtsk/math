# append_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:042016c7-3559-1f38-360a-1df6756cb0f6",
  "kind": "theorem",
  "lexical_name": "append_cons",
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
  "slug": "append-cons--99b1343b63199ad3fe6e47f4",
  "source": {
    "blob": "e2aa3a588bea6d4d714a2a1d7e3d2524186fc490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 654,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b1343b63199ad3fe6e47f4095b5a75bada4f67cb7b1a7922c416a0b0d73da3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:042016c7-3559-1f38-360a-1df6756cb0f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_cons {α : Sort*} (a : α) (as : Fin n → α) (bs : Fin m → α) :
    Fin.append (cons a as) bs
    = cons a (Fin.append as bs) ∘ (Fin.cast <| Nat.add_right_comm n 1 m) := by
  funext i
  rcases i with ⟨i, -⟩
  simp only [append, addCases, cons, castLT, cast, comp_apply]
  rcases i with - | i
  · simp
  · split_ifs with h
    · have : i < n := Nat.lt_of_succ_lt_succ h
      simp [addCases, this]
    · have : ¬i < n := Nat.not_le.mpr <| Nat.lt_succ.mp <| Nat.not_le.mp h
      simp [addCases, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2aa3a588bea6d4d714a2a1d7e3d2524186fc490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
