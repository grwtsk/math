# of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f88c6644b005dd9b8150cf6ea8208dd49813d1a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9b92f5c-05b3-c953-fd9d-f3e3e20833f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db92123b-38db-838f-c346-5abaaa508209",
  "kind": "theorem",
  "lexical_name": "of_injective",
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
  "slug": "of-injective--57aa140b4aa01054e8d1bdca",
  "source": {
    "blob": "f88c6644b005dd9b8150cf6ea8208dd49813d1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57aa140b4aa01054e8d1bdca4f53c741f51c404e836ac0d22c55bc7994d08b2d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db92123b-38db-838f-c346-5abaaa508209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem of_injective [Small.{v} R] (inj : Module.Injective R Q) : Module.Baer R Q := by
  intro I g
  let eI := Shrink.linearEquiv I R
  let eR := Shrink.linearEquiv R R
  obtain ⟨g', hg'⟩ := Module.Injective.out (eR.symm.toLinearMap ∘ₗ I.subtype ∘ₗ eI.toLinearMap)
    (eR.symm.injective.comp <| Subtype.val_injective.comp eI.injective) (g ∘ₗ eI.toLinearMap)
  exact ⟨g' ∘ₗ eR.symm.toLinearMap, fun x mx ↦ by simpa [eI, eR] using hg' (equivShrink I ⟨x, mx⟩)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f88c6644b005dd9b8150cf6ea8208dd49813d1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
