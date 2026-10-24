# Algebra.FormallySmooth.iff_injective_and_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4687af50-b690-a2e0-0762-412c3b77bc09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59fcbb7c-8c56-37d5-7d64-291e51adb38b",
  "kind": "theorem",
  "lexical_name": "Algebra.FormallySmooth.iff_injective_and_split",
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
  "slug": "algebra-formallysmooth-iff-injective-and-split--e4881c725d703010881eb059",
  "source": {
    "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 424,
    "path": "GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4881c725d703010881eb059a3ca221089961928ef2f2d33b1a6e30e74f6f383",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59fcbb7c-8c56-37d5-7d64-291e51adb38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.FormallySmooth.iff_injective_and_split :
    Algebra.FormallySmooth R S ↔ Function.Injective (kerCotangentToTensor R P S) ∧
      ∃ l, (KaehlerDifferential.mapBaseChange R P S) ∘ₗ l = LinearMap.id := by
  rw [Algebra.FormallySmooth.iff_split_injection hf]
  refine (and_iff_right (KaehlerDifferential.mapBaseChange_surjective R _ _ hf)).symm.trans ?_
  refine Iff.trans (((exact_kerCotangentToTensor_mapBaseChange R _ _ hf).split_tfae'
    (g := (KaehlerDifferential.mapBaseChange R P S).restrictScalars P)).out 1 0)
    (and_congr Iff.rfl ?_)
  rw [(LinearMap.extendScalarsOfSurjectiveEquiv hf).surjective.exists]
  simp only [LinearMap.ext_iff, LinearMap.coe_comp, LinearMap.coe_restrictScalars,
    Function.comp_apply, LinearMap.extendScalarsOfSurjective_apply, LinearMap.id_coe, id_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496d5bf06be1bc55372ba850642e28cd2a8607f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
