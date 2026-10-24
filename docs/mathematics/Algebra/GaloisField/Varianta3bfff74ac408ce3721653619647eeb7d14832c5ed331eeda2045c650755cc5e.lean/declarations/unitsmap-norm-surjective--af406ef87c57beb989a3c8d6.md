# unitsMap_norm_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:070839ee-a539-1fa7-4b8f-7e56c3b599e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cdbb5d5-41be-76c8-6c72-fbc9c5556124",
  "kind": "theorem",
  "lexical_name": "unitsMap_norm_surjective",
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
  "slug": "unitsmap-norm-surjective--af406ef87c57beb989a3c8d6",
  "source": {
    "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 244,
    "path": "GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af406ef87c57beb989a3c8d6948324bfdce76aa743a76a8e7f0201baf3a14362",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cdbb5d5-41be-76c8-6c72-fbc9c5556124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsMap_norm_surjective : Function.Surjective (Units.map <| Algebra.norm K (S := K')) :=
  have := Finite.of_injective_finite_range (algebraMap K K').injective
  MonoidHom.surjective_of_card_ker_le_div _ <| by
    simp_rw [Nat.card_units]
    classical
    have := Fintype.ofFinite K'ˣ
    convert IsCyclic.card_pow_eq_one_le (α := K'ˣ) <| Nat.div_pos
      (Nat.sub_le_sub_right (Nat.card_le_card_of_injective _ (algebraMap K K').injective) _) <|
      Nat.sub_pos_of_lt Finite.one_lt_card
    rw [← Set.ncard_coe_Finset, ← SetLike.coe_sort_coe, Set.Nat.card_coe_set_eq]; congr; ext
    simp [Units.ext_iff, ← (algebraMap K K').injective.eq_iff, algebraMap_norm_eq_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23bf9d35893133026a646aa2677f4f87dd7b1a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
