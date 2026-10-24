# _root_.LinearMap.finite_iff_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42849e5cd72dfc5a9b1bf1a564000ed5c02877a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dc9ad0b-3e98-072d-092a-68665646b2f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2c18d48-32b3-d008-d856-9eb5cba16bac",
  "kind": "theorem",
  "lexical_name": "_root_.LinearMap.finite_iff_of_bijective",
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
  "slug": "root-linearmap-finite-iff-of-bijective--776d8467c9c501fe80d6bd08",
  "source": {
    "blob": "42849e5cd72dfc5a9b1bf1a564000ed5c02877a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776d8467c9c501fe80d6bd080066cd88c16086bd1886802d94817d643740fad6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2c18d48-32b3-d008-d856-9eb5cba16bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.LinearMap.finite_iff_of_bijective (f : M →ₛₗ[σ] P) (hf : Function.Bijective f) :
    Module.Finite R M ↔ Module.Finite S P :=
  ⟨fun _ ↦ of_surjective f hf.surjective, fun _ ↦ ⟨fg_of_fg_map_injective f hf.injective <| by
    rwa [Submodule.map_top, LinearMap.range_eq_top.2 hf.surjective, ← Module.finite_def]⟩⟩

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd43c1e9f94c2fff31c2bab14253a54ee0b91ff4992fdcd459e7c7e516d96398c.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42849e5cd72dfc5a9b1bf1a564000ed5c02877a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
