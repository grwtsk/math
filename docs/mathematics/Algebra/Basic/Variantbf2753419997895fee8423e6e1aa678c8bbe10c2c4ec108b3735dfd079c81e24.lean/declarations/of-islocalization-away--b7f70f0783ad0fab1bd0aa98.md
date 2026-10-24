# of_isLocalization_Away

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b85886b995e0f15b698dce50e196d71f5d6d507",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26120a2f-6e1f-8881-2f85-c4d61006f7ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cc7e9ea-a1ea-09ea-25d0-7cfec8f687e2",
  "kind": "theorem",
  "lexical_name": "of_isLocalization_Away",
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
  "slug": "of-islocalization-away--b7f70f0783ad0fab1bd0aa98",
  "source": {
    "blob": "1b85886b995e0f15b698dce50e196d71f5d6d507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 206,
    "path": "GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f70f0783ad0fab1bd0aa98c777c63ac22e1b9f935c54f710b283a095f9eea7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc7e9ea-a1ea-09ea-25d0-7cfec8f687e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_isLocalization_Away (r : R) [IsLocalization.Away r A] : Etale R A where
  formallyEtale := Algebra.FormallyEtale.of_isLocalization (Submonoid.powers r)
  finitePresentation := IsLocalization.Away.finitePresentation r

end Etale

end Algebra

namespace RingHom

variable {R S : Type u} [CommRing R] [CommRing S]

/--
A ring homomorphism `R →+* A` is formally etale if it is formally unramified and formally smooth.
See `Algebra.FormallyEtale`.
-/
@[algebraize Algebra.FormallyEtale]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b85886b995e0f15b698dce50e196d71f5d6d507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
