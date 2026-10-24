# den_div_cast_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6a263c794b22a9b8af07fa4c4dfb7a398bc30c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34d5c8ee-dc16-0605-9d35-633499c9b96e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caf4a68a-fdd7-7af2-87e4-1245d2f3cade",
  "kind": "theorem",
  "lexical_name": "den_div_cast_eq_one_iff",
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
  "slug": "den-div-cast-eq-one-iff--5710136a65e854a6bdcd0700",
  "source": {
    "blob": "a6a263c794b22a9b8af07fa4c4dfb7a398bc30c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 194,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5710136a65e854a6bdcd07005bdd6a1359cc962872cb13f12595ec80953444d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf4a68a-fdd7-7af2-87e4-1245d2f3cade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem den_div_cast_eq_one_iff (m n : ℤ) (hn : n ≠ 0) : ((m : ℚ) / n).den = 1 ↔ n ∣ m := by
  replace hn : (n : ℚ) ≠ 0
  · rwa [Ne.def, ← Int.cast_zero, coe_int_inj]
  constructor
  · intro h
    -- Porting note: was `lift (m : ℚ) / n to ℤ using h with k hk`
    use ((m : ℚ) / n).num
    have hk := Rat.coe_int_num_of_den_eq_one h
    simp_rw [eq_div_iff_mul_eq hn, ← Int.cast_mul] at hk
    rwa [mul_comm, eq_comm, coe_int_inj] at hk
  · rintro ⟨d, rfl⟩
    rw [Int.cast_mul, mul_comm, mul_div_cancel _ hn, Rat.coe_int_den]
#align rat.denom_div_cast_eq_one_iff Rat.den_div_cast_eq_one_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a263c794b22a9b8af07fa4c4dfb7a398bc30c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
