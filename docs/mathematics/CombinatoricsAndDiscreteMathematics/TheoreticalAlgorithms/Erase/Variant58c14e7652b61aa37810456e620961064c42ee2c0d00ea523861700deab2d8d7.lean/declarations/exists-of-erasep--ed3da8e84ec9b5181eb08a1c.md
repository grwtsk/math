# exists_of_eraseP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e5a8c25-0cac-0ee1-c4f4-26e733f68468",
  "kind": "theorem",
  "lexical_name": "exists_of_eraseP",
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
  "slug": "exists-of-erasep--ed3da8e84ec9b5181eb08a1c",
  "source": {
    "blob": "de6d85b0e8b7751aa61d506a7060b32350efb108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed3da8e84ec9b5181eb08a1c64bed03b22999ce2ea5e1cbca99d72ab9bab4805",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e5a8c25-0cac-0ee1-c4f4-26e733f68468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_eraseP {xs : Array α} {a} (hm : a ∈ xs) (hp : p a) :
    ∃ a ys zs, (∀ b ∈ ys, ¬p b) ∧ p a ∧ xs = ys.push a ++ zs ∧ xs.eraseP p = ys ++ zs := by
  rcases xs with ⟨xs⟩
  obtain ⟨a, l₁, l₂, h₁, h₂, rfl, h₃⟩ := List.exists_of_eraseP (by simpa using hm) (hp)
  refine ⟨a, ⟨l₁⟩, ⟨l₂⟩, by simpa using h₁, h₂, by simp, by simpa using h₃⟩

-- The arguments are explicit here, so this lemma can be used as a case split.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6d85b0e8b7751aa61d506a7060b32350efb108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
