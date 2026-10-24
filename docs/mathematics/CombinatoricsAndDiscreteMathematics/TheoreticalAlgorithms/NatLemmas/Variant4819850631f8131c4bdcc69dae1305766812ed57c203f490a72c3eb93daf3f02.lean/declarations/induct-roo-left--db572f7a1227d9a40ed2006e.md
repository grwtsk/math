# induct_roo_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe86a92df3df93a62f4285f6289afdf67e395bc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4819850631f8131c4bdcc69dae1305766812ed57c203f490a72c3eb93daf3f02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c71cdf23-d3da-a872-1c58-98dd3a89ca6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fc03a58-d7f2-282d-5ed6-889b85c4a572",
  "kind": "theorem",
  "lexical_name": "induct_roo_left",
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
  "slug": "induct-roo-left--db572f7a1227d9a40ed2006e",
  "source": {
    "blob": "fe86a92df3df93a62f4285f6289afdf67e395bc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1390,
    "line": 1357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant4819850631f8131c4bdcc69dae1305766812ed57c203f490a72c3eb93daf3f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db572f7a1227d9a40ed2006ed08569eec4e8d5d5b5b8d0cfdfafac492a2f6128",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant4819850631f8131c4bdcc69dae1305766812ed57c203f490a72c3eb93daf3f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc03a58-d7f2-282d-5ed6-889b85c4a572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1357–1390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem induct_roo_left (motive : Nat → Nat → Prop)
    (base : ∀ a b, b ≤ a + 1 → motive a b)
    (step : ∀ a b, a + 1 < b → motive (a + 1) b → motive a b)
    (a b : Nat) : motive a b := by
  induction h : b - a - 1 generalizing a b
  · apply base; omega
  · rename_i d ih
    apply step
    · omega
    · apply ih; omega

/--
Induction principle for proving properties of {name}`Nat`-based ranges of the form {lean}`a<...b` by
varying the upper bound.

In the {name}`base` case, one proves that for any {given}`a : Nat` and {given}`b : Nat` with
{lean}`b ≤ a + 1`, the statement holds for the empty range {lean}`a<...b`.

In the {name}`step` case, one proves that for any {given}`a : Nat` and {given}`b : Nat`, if the
statement holds for {lean}`a<...b`, it also holds for the larger range {lean}`a<...(b + 1)`.

The following is an example reproving {name}`length_toList_roo`.

```lean
example (a b : Nat) : (a<...b).toList.length = b - a - 1 := by
  induction a, b using Nat.induct_roo_right
  case base =>
    simp only [Nat.toList_roo_eq_nil, List.length_nil, *]; omega
  case step a b hle ih =>
    rw [Nat.toList_roo_eq_append (by omega),
      List.length_append, List.length_singleton, Nat.add_sub_cancel, ih]
    omega
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant4819850631f8131c4bdcc69dae1305766812ed57c203f490a72c3eb93daf3f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant4819850631f8131c4bdcc69dae1305766812ed57c203f490a72c3eb93daf3f02.lean#L1357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe86a92df3df93a62f4285f6289afdf67e395bc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
