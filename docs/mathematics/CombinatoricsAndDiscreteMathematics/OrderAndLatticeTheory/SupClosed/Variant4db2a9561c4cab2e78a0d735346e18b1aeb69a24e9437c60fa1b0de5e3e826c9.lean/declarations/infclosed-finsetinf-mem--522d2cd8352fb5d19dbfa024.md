# InfClosed.finsetInf_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb2aedaf8caca00830d475181ae541a84dfc8905",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e85dc8c1-a42e-41fa-0a1c-5239ab6aa797",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25ed61cc-fddd-dbee-dac9-73bc1b186a7e",
  "kind": "lemma",
  "lexical_name": "InfClosed.finsetInf_mem",
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
  "slug": "infclosed-finsetinf-mem--522d2cd8352fb5d19dbfa024",
  "source": {
    "blob": "bb2aedaf8caca00830d475181ae541a84dfc8905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522d2cd8352fb5d19dbfa024b60b31713d6688197aa4c559b3c9fb5d1afa02b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ed61cc-fddd-dbee-dac9-73bc1b186a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma InfClosed.finsetInf_mem [OrderTop α] (hs : InfClosed s) (ht : t.Nonempty) :
    (∀ i ∈ t, f i ∈ s) → t.inf f ∈ s :=
  inf'_eq_inf ht f ▸ hs.finsetInf'_mem ht

end Finset
end SemilatticeInf

open Finset OrderDual

section Lattice
variable {ι : Sort*} [Lattice α] [Lattice β] {S : Set (Set α)} {f : ι → Set α} {s t : Set α} {a : α}

open Set

/-- A set `s` is a *sublattice* if `a ⊔ b ∈ s` and `a ⊓ b ∈ s` for all `a ∈ s`, `b ∈ s`.
Note: This is not the preferred way to declare a sublattice. One should instead use `Sublattice`.
TODO: Define `Sublattice`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant4db2a9561c4cab2e78a0d735346e18b1aeb69a24e9437c60fa1b0de5e3e826c9.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2aedaf8caca00830d475181ae541a84dfc8905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
