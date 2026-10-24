# cast_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bc491d3b1dafebc5cf20a5fc503bb87a51f5bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5587ce1a-bb93-db3f-4f72-b7f51a12817a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69b6997a-02f8-f51b-3c2c-b5ae6e006344",
  "kind": "lemma",
  "lexical_name": "cast_injective",
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
  "slug": "cast-injective--c540e7b33f451a21a40e6dfc",
  "source": {
    "blob": "4bc491d3b1dafebc5cf20a5fc503bb87a51f5bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c540e7b33f451a21a40e6dfcb72612109178729e17e8afcf43490cf58978a20a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69b6997a-02f8-f51b-3c2c-b5ae6e006344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_injective : Injective ((↑) : ℚ → α)
  | ⟨n₁, d₁, d₁0, c₁⟩, ⟨n₂, d₂, d₂0, c₂⟩, h => by
    have d₁a : (d₁ : α) ≠ 0 := Nat.cast_ne_zero.2 d₁0
    have d₂a : (d₂ : α) ≠ 0 := Nat.cast_ne_zero.2 d₂0
    rw [mk_eq_divInt, mk_eq_divInt] at h ⊢
    rw [cast_divInt_of_ne_zero _ (by simpa), cast_divInt_of_ne_zero _ (by simpa)] at h
    norm_cast at h
    rwa [eq_div_iff_mul_eq d₂a, division_def, mul_assoc, (d₁.cast_commute (d₂ : α)).inv_left₀.eq,
      ← mul_assoc, ← division_def, eq_comm, eq_div_iff_mul_eq d₁a, eq_comm, ← Int.cast_natCast d₁,
      ← Int.cast_mul, ← Int.cast_natCast d₂, ← Int.cast_mul, Int.cast_inj, ← mkRat_eq_iff d₁0 d₂0]
      at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CharZero/Varianta0cf8d3fd177656c086c13e1de2c9065d0ae898cc635acde1e5d877c46d3c5eb.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc491d3b1dafebc5cf20a5fc503bb87a51f5bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
