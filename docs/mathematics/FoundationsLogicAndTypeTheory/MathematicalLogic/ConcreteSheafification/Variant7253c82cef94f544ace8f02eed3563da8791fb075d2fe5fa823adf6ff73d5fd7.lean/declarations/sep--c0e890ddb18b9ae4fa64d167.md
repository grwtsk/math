# sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16dc933d-1d87-132e-3c0d-912109e8c171",
  "kind": "theorem",
  "lexical_name": "sep",
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
  "slug": "sep--c0e890ddb18b9ae4fa64d167",
  "source": {
    "blob": "15fbd156e1e9bdaa432240aca834e8b9fa948d66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e890ddb18b9ae4fa64d167fd1c019478acaf32663cee85311b5be264bfca8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16dc933d-1d87-132e-3c0d-912109e8c171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sep {X : C} (P : Cᵒᵖ ⥤ D) (S : J.Cover X) (x y : ToType ((J.plusObj P).obj (op X)))
    (h : ∀ I : S.Arrow, (J.plusObj P).map I.f.op x = (J.plusObj P).map I.f.op y) : x = y := by
  -- First, we choose representatives for x and y.
  obtain ⟨Sx, x, rfl⟩ := exists_rep x
  obtain ⟨Sy, y, rfl⟩ := exists_rep y
  simp only [res_mk_eq_mk_pullback] at h
  -- Next, using our assumption,
  -- choose covers over which the pullbacks of these representatives become equal.
  choose W h1 h2 hh using fun I : S.Arrow => (eq_mk_iff_exists _ _).mp (h I)
  -- To prove equality, it suffices to prove that there exists a cover over which
  -- the representatives become equal.
  rw [eq_mk_iff_exists]
  -- Construct the cover over which the representatives become equal by combining the various
  -- covers chosen above.
  let B : J.Cover X := S.bind W
  use B
  -- Prove that this cover refines the two covers over which our representatives are defined
  -- and use these proofs.
  let ex : B ⟶ Sx :=
    homOfLE
      (by
        rintro Y f ⟨Z, e1, e2, he2, he1, hee⟩
        rw [← hee]
        apply leOfHom (h1 ⟨_, _, he2⟩)
        exact he1)
  let ey : B ⟶ Sy :=
    homOfLE
      (by
        rintro Y f ⟨Z, e1, e2, he2, he1, hee⟩
        rw [← hee]
        apply leOfHom (h2 ⟨_, _, he2⟩)
        exact he1)
  use ex, ey
  -- Now prove that indeed the representatives become equal over `B`.
  -- This will follow by using the fact that our representatives become
  -- equal over the chosen covers.
  ext1 I
  let IS : S.Arrow := I.fromMiddle
  specialize hh IS
  let IW : (W IS).Arrow := I.toMiddle
  apply_fun fun e => e IW at hh
  convert hh using 1
  · exact x.congr_apply I.middle_spec.symm _
  · exact y.congr_apply I.middle_spec.symm _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConcreteSheafification/Variant7253c82cef94f544ace8f02eed3563da8791fb075d2fe5fa823adf6ff73d5fd7.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fbd156e1e9bdaa432240aca834e8b9fa948d66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
