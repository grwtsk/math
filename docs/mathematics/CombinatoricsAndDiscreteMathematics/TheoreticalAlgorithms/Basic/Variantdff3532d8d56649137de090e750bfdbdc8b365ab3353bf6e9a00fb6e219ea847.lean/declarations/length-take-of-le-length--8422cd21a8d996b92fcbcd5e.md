# length_take_of_le_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92b4e61c-f954-49a4-4d76-d9b2531acac1",
  "kind": "theorem",
  "lexical_name": "length_take_of_le_length",
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
  "slug": "length-take-of-le-length--8422cd21a8d996b92fcbcd5e",
  "source": {
    "blob": "ab742c218b19716a84bd2f4e79c0d5e5e55437f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdff3532d8d56649137de090e750bfdbdc8b365ab3353bf6e9a00fb6e219ea847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8422cd21a8d996b92fcbcd5e695bed672423b504097721477f65ae6c2efeb602",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdff3532d8d56649137de090e750bfdbdc8b365ab3353bf6e9a00fb6e219ea847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92b4e61c-f954-49a4-4d76-d9b2531acac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_take_of_le_length {s : Seq α} {n : ℕ}
    (hle : ∀ h : s.Terminates, n ≤ s.length h) : (s.take n).length = n := by
  induction n generalizing s with
  | zero => simp [take]
  | succ n ih =>
      rw [take, destruct]
      let ⟨a, ha⟩ := lt_length_iff'.1 (fun ht => lt_of_lt_of_le (Nat.succ_pos _) (hle ht))
      simp only [Option.mem_def.1 ha, Option.map_eq_map, Option.map_some, List.length_cons,
        Nat.add_right_cancel_iff]
      rw [ih]
      intro h
      simp only [length, tail, Nat.le_find_iff, TerminatedAt, get?_mk, Stream'.tail]
      intro m hmn hs
      have := lt_length_iff'.1 (fun ht => (Nat.lt_of_succ_le (hle ht)))
      rw [le_stable s (Nat.succ_le_of_lt hmn) hs] at this
      simp at this

end Take

section ToList

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdff3532d8d56649137de090e750bfdbdc8b365ab3353bf6e9a00fb6e219ea847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdff3532d8d56649137de090e750bfdbdc8b365ab3353bf6e9a00fb6e219ea847.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab742c218b19716a84bd2f4e79c0d5e5e55437f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
