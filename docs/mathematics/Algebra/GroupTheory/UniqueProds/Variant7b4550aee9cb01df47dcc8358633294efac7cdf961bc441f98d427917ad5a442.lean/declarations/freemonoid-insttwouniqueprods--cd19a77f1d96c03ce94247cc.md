# FreeMonoid.instTwoUniqueProds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c44b937413aae257d4015452163d8e1edd3efa79728688f44fe7389d56460b2",
  "kind": "instance",
  "lexical_name": "FreeMonoid.instTwoUniqueProds",
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
  "slug": "freemonoid-insttwouniqueprods--cd19a77f1d96c03ce94247cc",
  "source": {
    "blob": "084d8a90a9c3f8cb5c9cb4849ff1804cef7ada8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd19a77f1d96c03ce94247ccc6c049cc9f41a14678b9035d9e51de1e56a8b14c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c44b937413aae257d4015452163d8e1edd3efa79728688f44fe7389d56460b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FreeMonoid.instTwoUniqueProds {κ : Type*} : TwoUniqueProds (FreeMonoid κ) :=
  .of_mulHom ⟨Multiplicative.ofAdd ∘ List.length, fun _ _ ↦ congr_arg _ List.length_append⟩
    (fun _ _ _ _ h h' ↦ List.append_inj h <| Equiv.injective Multiplicative.ofAdd h'.1)

/-- Any `FreeAddMonoid` has the `TwoUniqueSums` property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `084d8a90a9c3f8cb5c9cb4849ff1804cef7ada8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
