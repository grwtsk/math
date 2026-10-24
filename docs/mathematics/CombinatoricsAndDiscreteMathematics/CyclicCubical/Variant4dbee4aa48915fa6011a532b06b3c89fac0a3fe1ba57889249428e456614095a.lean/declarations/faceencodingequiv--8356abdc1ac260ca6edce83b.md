# faceEncodingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a8bbf0cacdd1c37897158108d8aca218ef317aadb34ec650740956e49cf46c",
  "kind": "def",
  "lexical_name": "faceEncodingEquiv",
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
  "slug": "faceencodingequiv--8356abdc1ac260ca6edce83b",
  "source": {
    "blob": "bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8356abdc1ac260ca6edce83b7d3818bf446c84a8358e98477f1d250a560f7b8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a8bbf0cacdd1c37897158108d8aca218ef317aadb34ec650740956e49cf46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def faceEncodingEquiv (n k : Nat) :
    CubicalFace n k ≃ FaceEncoding n k where
  toFun face :=
    ⟨⟨face.1.freeCoordinates, by
        simpa [FaceAddress.dimension] using face.2⟩,
      fun i ↦ (face.1 i.1).getD false⟩
  invFun encoded :=
    ⟨fun i ↦
        if h : i ∈ encoded.1.1 then none
        else some (encoded.2 ⟨i, h⟩),
      by
        change
          (Finset.univ.filter fun i ↦
            (if h : i ∈ encoded.1.1 then none
              else some (encoded.2 ⟨i, h⟩)) = none).card = k
        have hfree :
            (Finset.univ.filter fun i ↦
              (if h : i ∈ encoded.1.1 then none
                else some (encoded.2 ⟨i, h⟩)) = none) = encoded.1.1 := by
          ext i
          by_cases hi : i ∈ encoded.1.1 <;> simp [hi]
        rw [hfree, encoded.1.2]⟩
  left_inv face := by
    apply Subtype.ext
    funext i
    cases hface : face.1 i with
    | none =>
        simp [FaceAddress.freeCoordinates, hface]
    | some bit =>
        simp [FaceAddress.freeCoordinates, hface]
  right_inv encoded := by
    rcases encoded with ⟨⟨free, hcard⟩, fixed⟩
    let rebuilt : FaceAddress n :=
      fun i ↦ if h : i ∈ free then none else some (fixed ⟨i, h⟩)
    have hrebuilt : rebuilt.freeCoordinates = free := by
      ext i
      simp [rebuilt, FaceAddress.freeCoordinates]
    have hfree :
        (⟨rebuilt.freeCoordinates, by simpa [hrebuilt] using hcard⟩ :
          {s : Finset (Fin n) // s.card = k}) = ⟨free, hcard⟩ := by
      apply Subtype.ext
      exact hrebuilt
    apply Sigma.ext hfree
    apply Function.hfunext
    · exact congrArg
        (fun s : {s : Finset (Fin n) // s.card = k} ↦
          {i : Fin n // i ∉ s.1}) hfree
    · intro i j hij
      have hp : ∀ x : Fin n,
          x ∉ rebuilt.freeCoordinates ↔ x ∉ free := by
        intro x
        rw [hrebuilt]
      have hval : i.1 = j.1 := (Subtype.heq_iff_coe_eq hp).1 hij
      rcases i with ⟨i, hi⟩
      rcases j with ⟨j, hj⟩
      simp only at hval
      subst j
      simp [hj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
