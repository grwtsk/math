# SupClosed.finsetSup_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2cdb57-534b-83e2-30d1-764d6191f267",
  "kind": "lemma",
  "lexical_name": "SupClosed.finsetSup_mem",
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
  "slug": "supclosed-finsetsup-mem--3a15c83379ed10570b4ca026",
  "source": {
    "blob": "93a8e3f0013cb6e33a1cbcc4549a742c3094326c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant0382bfc7c91dc6c6c38a298e3559b0dbd0c9e55b0983faf2850098074613a9a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a15c83379ed10570b4ca026645abf8c0f18518a3ba900853688ed37be35f89c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant0382bfc7c91dc6c6c38a298e3559b0dbd0c9e55b0983faf2850098074613a9a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a2cdb57-534b-83e2-30d1-764d6191f267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SupClosed.finsetSup_mem [OrderBot α] (hs : SupClosed s) (ht : t.Nonempty) :
    (∀ i ∈ t, f i ∈ s) → t.sup f ∈ s :=
  sup'_eq_sup ht f ▸ hs.finsetSup'_mem ht

end Finset
end SemilatticeSup

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant0382bfc7c91dc6c6c38a298e3559b0dbd0c9e55b0983faf2850098074613a9a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupClosed/Variant0382bfc7c91dc6c6c38a298e3559b0dbd0c9e55b0983faf2850098074613a9a6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a8e3f0013cb6e33a1cbcc4549a742c3094326c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
