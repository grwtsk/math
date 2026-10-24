# mem_list_toFinmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6394adbc43450cbeb53b4659114306d4f5336718",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3209357b-0010-4413-b9a9-63f4dfdf9e5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a40b9ef-6318-4e5c-9651-8bca3ea6ce7b",
  "kind": "theorem",
  "lexical_name": "mem_list_toFinmap",
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
  "slug": "mem-list-tofinmap--d662bec7750ea0f68dbbcfd8",
  "source": {
    "blob": "6394adbc43450cbeb53b4659114306d4f5336718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 525,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d662bec7750ea0f68dbbcfd8d9e82e85afcc7301bce2c72ca12085ff505b16d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a40b9ef-6318-4e5c-9651-8bca3ea6ce7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_list_toFinmap (a : α) (xs : List (Sigma β)) :
    a ∈ xs.toFinmap ↔ ∃ b : β a, Sigma.mk a b ∈ xs := by
  -- Porting note: golfed
  induction' xs with x xs
  · simp only [toFinmap_nil, not_mem_empty, find?, not_mem_nil, exists_false]
  cases' x with fst_i snd_i
  -- Porting note: `Sigma.mk.inj_iff` required because `simp` behaves differently
  simp only [toFinmap_cons, *, exists_or, mem_cons, mem_insert, exists_and_left, Sigma.mk.inj_iff]
  refine (or_congr_left <| and_iff_left_of_imp ?_).symm
  rintro rfl
  simp only [exists_eq, heq_iff_eq]
#align finmap.mem_list_to_finmap Finmap.mem_list_toFinmap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6394adbc43450cbeb53b4659114306d4f5336718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
