# isLittleO_im_pow_exp_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1b8e98970d66d73a4a4fe495d1f9abb10411c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41a39445-8455-471f-4b1a-74c16408bcb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51c7895d-b98b-57d9-9a9a-a268d558d0ac",
  "kind": "theorem",
  "lexical_name": "isLittleO_im_pow_exp_re",
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
  "slug": "islittleo-im-pow-exp-re--4b7ea07584b8d33b0e790b15",
  "source": {
    "blob": "8d1b8e98970d66d73a4a4fe495d1f9abb10411c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b7ea07584b8d33b0e790b15c24858aa9cfa0ea30a69dd616e3a383549620e14",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51c7895d-b98b-57d9-9a9a-a268d558d0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_im_pow_exp_re (hl : IsExpCmpFilter l) (n : ℕ) :
    (fun z : ℂ => z.im ^ n) =o[l] fun z => Real.exp z.re :=
  flip IsLittleO.of_pow two_ne_zero <|
    calc
      (fun z : ℂ ↦ (z.im ^ n) ^ 2) = (fun z ↦ z.im ^ (2 * n)) := by simp only [pow_mul']
      _ =O[l] fun z ↦ Real.exp z.re := hl.isBigO_im_pow_re _
      _ =     fun z ↦ (Real.exp z.re) ^ 1 := by simp only [pow_one]
      _ =o[l] fun z ↦ (Real.exp z.re) ^ 2 :=
        (isLittleO_pow_pow_atTop_of_lt one_lt_two).comp_tendsto <|
          Real.tendsto_exp_atTop.comp hl.tendsto_re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1b8e98970d66d73a4a4fe495d1f9abb10411c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
