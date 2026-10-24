# Algebra.IsPushout.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c146f2fd3016b8f4db319ceb0dace2496c4544c16458fb398b8287618f5593b8",
  "kind": "def",
  "lexical_name": "Algebra.IsPushout.equiv",
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
  "slug": "algebra-ispushout-equiv--5ed12e79d933d52cb97e3ffa",
  "source": {
    "blob": "7423b539d1e0cd84d706380234a1f8a252cfb8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 412,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ed12e79d933d52cb97e3ffacad9c2972cd5e47b6d44cbb5679e7f0d22edca5f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c146f2fd3016b8f4db319ceb0dace2496c4544c16458fb398b8287618f5593b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Algebra.IsPushout.equiv [h : Algebra.IsPushout R S R' S'] : S ⊗[R] R' ≃ₐ[S] S' where
  __ := h.out.equiv
  map_mul' x y := by
    dsimp
    induction x with
    | zero => simp
    | add x y _ _ => simp [*, add_mul]
    | tmul a b =>
      induction y with
      | zero => simp
      | add x y _ _ => simp [*, mul_add]
      | tmul x y => simp [IsBaseChange.equiv_tmul, Algebra.smul_def, mul_mul_mul_comm]
  commutes' := by simp [IsBaseChange.equiv_tmul, Algebra.smul_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7423b539d1e0cd84d706380234a1f8a252cfb8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
