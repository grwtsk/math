# IsSubmonoid.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/befe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4c1ecf3-272d-bee6-8d9a-4d2d0b9ea925",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4797564-2e7b-b9b3-a953-6e520e90fe83",
  "kind": "theorem",
  "lexical_name": "IsSubmonoid.image",
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
  "slug": "issubmonoid-image--4e1a90ba7fe331e7d80574fc",
  "source": {
    "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e1a90ba7fe331e7d80574fc9607c125b9c23096810ca7edeeef5dc11fdc1dc7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4797564-2e7b-b9b3-a953-6e520e90fe83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubmonoid.image {γ : Type*} [Monoid γ] {f : M → γ} (hf : IsMonoidHom f) {s : Set M}
    (hs : IsSubmonoid s) : IsSubmonoid (f '' s) :=
  { one_mem := ⟨1, hs.one_mem, hf.map_one⟩
    mul_mem := @fun a b ⟨x, hx⟩ ⟨y, hy⟩ =>
      ⟨x * y, hs.mul_mem hx.1 hy.1, by rw [hf.map_mul, hx.2, hy.2]⟩ }
#align is_submonoid.image IsSubmonoid.image
#align is_add_submonoid.image IsAddSubmonoid.image

/-- The image of a monoid hom is a submonoid of the codomain. -/
@[to_additive "The image of an `AddMonoid` hom is an `AddSubmonoid` of the codomain."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bc4e199cf96b3ff1c543ec7f14b06f5596d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
