# inlX_nullHomotopy_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e778a6-ab34-b058-b42f-c6925ae63158",
  "kind": "lemma",
  "lexical_name": "inlX_nullHomotopy_f",
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
  "slug": "inlx-nullhomotopy-f--21b8a0c6c8a5ef4f4da3adfc",
  "source": {
    "blob": "dcdbb93c93a56b7f83bfeb46026e168c35839d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 466,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21b8a0c6c8a5ef4f4da3adfc07cbcb43ed19a2fe3446cf506074e2d00cba55e9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e778a6-ab34-b058-b42f-c6925ae63158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inlX_nullHomotopy_f (i j : ι) (hij : c.Rel j i) :
    inlX K i j hij ≫ (nullHomotopicMap K).f j =
      inlX K i j hij ≫ (π K ≫ ι₀ K - 𝟙 _).f j := by
  dsimp [nullHomotopicMap]
  by_cases hj : ∃ (k : ι), c.Rel k j
  · obtain ⟨k, hjk⟩ := hj
    simp only [assoc, Homotopy.nullHomotopicMap'_f hjk hij, homotopyCofiber_X, homotopyCofiber_d,
      homotopyCofiber.d_sndX_assoc _ _ _ hij, add_comp, comp_add, homotopyCofiber.inlX_fstX_assoc,
      homotopyCofiber.inlX_sndX_assoc, zero_comp, add_zero, comp_sub, inlX_π_assoc, comp_id,
      zero_sub, ← HomologicalComplex.comp_f_assoc, biprod.lift_snd, neg_f_apply, id_f,
      neg_comp, id_comp]
  · simp only [not_exists] at hj
    simp only [Homotopy.nullHomotopicMap'_f_of_not_rel_right hij hj,
      homotopyCofiber_X, homotopyCofiber_d, assoc, comp_sub, comp_id,
      homotopyCofiber.d_sndX_assoc _ _ _ hij, add_comp, comp_add, zero_comp, add_zero,
      homotopyCofiber.inlX_fstX_assoc, homotopyCofiber.inlX_sndX_assoc,
      ← HomologicalComplex.comp_f_assoc, biprod.lift_snd, neg_f_apply, id_f, neg_comp,
      id_comp, inlX_π_assoc, zero_sub]

include hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdbb93c93a56b7f83bfeb46026e168c35839d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
