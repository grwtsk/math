# induction_on_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bbf24774a965a3757a742d3099717862a91a12f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:519aced6-1be2-091e-d071-c000020134cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ea2a1cd-0932-af03-75a7-2f54654b8a3f",
  "kind": "theorem",
  "lexical_name": "induction_on_irreducible",
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
  "slug": "induction-on-irreducible--459600994ce114be78e0bd11",
  "source": {
    "blob": "7bbf24774a965a3757a742d3099717862a91a12f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:459600994ce114be78e0bd11f76e4cb5e19474ab9dbfa4522967c433b398a207",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea2a1cd-0932-af03-75a7-2f54654b8a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on_irreducible {motive : α → Prop} (a : α)
    (zero : motive 0) (unit : ∀ u : α, IsUnit u → motive u)
    (mul : ∀ a i : α, a ≠ 0 → Irreducible i → motive a → motive (i * a)) : motive a :=
  haveI := Classical.dec
  wellFounded_dvdNotUnit.fix
    (fun a ih =>
      if ha0 : a = 0 then ha0.substr zero
      else
        if hau : IsUnit a then unit a hau
        else
          let ⟨i, i_irred, b, hb⟩ := exists_irreducible_factor hau ha0
          let hb0 : b ≠ 0 := ne_zero_of_dvd_ne_zero ha0 ⟨i, mul_comm i b ▸ hb⟩
          hb.symm ▸ mul b i hb0 i_irred <| ih b ⟨hb0, i, i_irred.1, mul_comm i b ▸ hb⟩)
    a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant0209f3a6a04aa170e7225ce9a6e80b87449d23743bad8b37c874e3909c741624.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bbf24774a965a3757a742d3099717862a91a12f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
