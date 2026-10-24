# injective_codRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06a48257-fc31-54c9-2c89-27c2395a283b",
  "kind": "lemma",
  "lexical_name": "injective_codRestrict",
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
  "slug": "injective-codrestrict--8c64e7c4174ffdcc59c3c8a9",
  "source": {
    "blob": "14a7258d37edd4a861952d8497629bf826588ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 738,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c64e7c4174ffdcc59c3c8a936b9a43c866e8b7340e39d34490f27bbbeff6cab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a48257-fc31-54c9-2c89-27c2395a283b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_codRestrict {S} [SetLike S N] [SubmonoidClass S N] (f : M →* N) (s : S)
    (h : ∀ x, f x ∈ s) : Function.Injective (f.codRestrict s h) ↔ Function.Injective f :=
  ⟨fun H _ _ hxy ↦ H <| Subtype.eq hxy, fun H _ _ hxy ↦ H (congr_arg Subtype.val hxy)⟩

/-- Restriction of a monoid hom to its range interpreted as a submonoid. -/
@[to_additive "Restriction of an `AddMonoid` hom to its range interpreted as a submonoid."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a7258d37edd4a861952d8497629bf826588ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
