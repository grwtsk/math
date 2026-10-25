# canonicallyOrderedAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6736f2cc7bef66f3899af660249d6f5d6564f8a0507150033835bfec3042bcae",
  "kind": "instance",
  "lexical_name": "canonicallyOrderedAdd",
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
  "slug": "canonicallyorderedadd--adff24e075aea05956ec248b",
  "source": {
    "blob": "056e359aadb5dbb586cf75ae2743cf9294b97c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adff24e075aea05956ec248b40f6aa4c3c70806dc07f61c85c136ff35f2af901",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6736f2cc7bef66f3899af660249d6f5d6564f8a0507150033835bfec3042bcae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance canonicallyOrderedAdd : CanonicallyOrderedAdd Cardinal.{u} where
  exists_add_of_le {a b} :=
    inductionOn₂ a b fun α β ⟨⟨f, hf⟩⟩ =>
      have : α ⊕ ((range f)ᶜ : Set β) ≃ β := by
        classical
        exact (Equiv.sumCongr (Equiv.ofInjective f hf) (Equiv.refl _)).trans <|
          Equiv.Set.sumCompl (range f)
      ⟨#(↥(range f)ᶜ), mk_congr this.symm⟩
  le_self_add a _ := (add_zero a).ge.trans <| add_le_add_left (Cardinal.zero_le _) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056e359aadb5dbb586cf75ae2743cf9294b97c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
