# monic_descPochhammer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481a161835e3d36f183fd32133e0d42c14462752",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:437347f6-6433-c1ff-e34f-f3c7a4017ca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77686518-e1f4-01fd-bc7f-6fa751d34092",
  "kind": "theorem",
  "lexical_name": "monic_descPochhammer",
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
  "slug": "monic-descpochhammer--4e4bc92983130a246d18850e",
  "source": {
    "blob": "481a161835e3d36f183fd32133e0d42c14462752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e4bc92983130a246d18850e3b5564bfad5ab05baad8770e7ca3804c1eff4a95",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77686518-e1f4-01fd-bc7f-6fa751d34092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monic_descPochhammer (n : ℕ) [Nontrivial R] [NoZeroDivisors R] :
    Monic <| descPochhammer R n := by
  induction n with
  | zero => simp
  | succ n hn =>
    have h : leadingCoeff (X - 1 : R[X]) = 1 := leadingCoeff_X_sub_C 1
    have : natDegree (X - (1 : R[X])) ≠ 0 := ne_zero_of_eq_one <| natDegree_X_sub_C (1 : R)
    rw [descPochhammer_succ_left, Monic.def, leadingCoeff_mul, leadingCoeff_comp this, hn, monic_X,
        one_mul, one_mul, h, one_pow]

section

variable {R} {T : Type v} [Ring T]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantad7f0f7072531ab4cbfb55f10764fb0753d0f0daf5cdce3e39675c3b939894f0.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481a161835e3d36f183fd32133e0d42c14462752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
