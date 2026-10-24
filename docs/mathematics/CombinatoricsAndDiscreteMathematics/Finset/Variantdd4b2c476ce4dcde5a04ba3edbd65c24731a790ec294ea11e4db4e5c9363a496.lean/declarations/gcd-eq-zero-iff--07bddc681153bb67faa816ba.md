# gcd_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9aa56561e121caaaa684b69c546fe3c0709a2fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bea55829-b627-9c45-41ca-2708efad89f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c8ff6fe-0569-5a62-56fc-6d57103d07ea",
  "kind": "theorem",
  "lexical_name": "gcd_eq_zero_iff",
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
  "slug": "gcd-eq-zero-iff--07bddc681153bb67faa816ba",
  "source": {
    "blob": "d9aa56561e121caaaa684b69c546fe3c0709a2fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07bddc681153bb67faa816ba5cb28a7d8a37b394dbf4163a5a3b83068f4b8a68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c8ff6fe-0569-5a62-56fc-6d57103d07ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_eq_zero_iff : s.gcd f = 0 ↔ ∀ x : β, x ∈ s → f x = 0 := by
  rw [gcd_def, Multiset.gcd_eq_zero_iff]
  constructor <;> intro h
  · intro b bs
    apply h (f b)
    simp only [Multiset.mem_map, mem_def.1 bs]
    use b
    simp only [mem_def.1 bs, eq_self_iff_true, and_self]
  · intro a as
    rw [Multiset.mem_map] at as
    rcases as with ⟨b, ⟨bs, rfl⟩⟩
    apply h b (mem_def.1 bs)
#align finset.gcd_eq_zero_iff Finset.gcd_eq_zero_iff

/- Porting note: The change from `p : α → Prop` to `p : α → Bool` made this slightly less nice with
all the `decide`s around. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantdd4b2c476ce4dcde5a04ba3edbd65c24731a790ec294ea11e4db4e5c9363a496.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9aa56561e121caaaa684b69c546fe3c0709a2fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
