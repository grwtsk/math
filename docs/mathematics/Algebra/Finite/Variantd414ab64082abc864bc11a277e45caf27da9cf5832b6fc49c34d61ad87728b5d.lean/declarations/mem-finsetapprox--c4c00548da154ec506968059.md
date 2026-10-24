# mem_finsetApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a851b1dbafcc8699550d42291e12e1e8030863de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db8b531e-0cb5-31f2-3785-91aaed085881",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cee5ab9b-39f7-565d-6b26-bdab0428c415",
  "kind": "theorem",
  "lexical_name": "mem_finsetApprox",
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
  "slug": "mem-finsetapprox--c4c00548da154ec506968059",
  "source": {
    "blob": "a851b1dbafcc8699550d42291e12e1e8030863de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 197,
    "path": "GRWTSK/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4c00548da154ec506968059ee4ecf953113dc83d5eff1a7918b21c5bf1b8064",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee5ab9b-39f7-565d-6b26-bdab0428c415`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_finsetApprox {x : R} :
    x ∈ finsetApprox bS adm ↔ ∃ i j, i ≠ j ∧ distinctElems bS adm i - distinctElems bS adm j =
    x := by
  simp only [finsetApprox, Finset.mem_erase, Finset.mem_image]
  constructor
  · rintro ⟨hx, ⟨i, j⟩, _, rfl⟩
    refine' ⟨i, j, _, rfl⟩
    rintro rfl
    simp at hx
  · rintro ⟨i, j, hij, rfl⟩
    refine' ⟨_, ⟨i, j⟩, Finset.mem_univ _, rfl⟩
    rw [Ne.def, sub_eq_zero]
    exact fun h => hij ((distinctElems bS adm).injective h)
#align class_group.mem_finset_approx ClassGroup.mem_finsetApprox

section Real

open Real

attribute [-instance] Real.decidableEq

set_option maxHeartbeats 800000 in
/-- We can approximate `a / b : L` with `q / r`, where `r` has finitely many options for `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantd414ab64082abc864bc11a277e45caf27da9cf5832b6fc49c34d61ad87728b5d.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a851b1dbafcc8699550d42291e12e1e8030863de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
