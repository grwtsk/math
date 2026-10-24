# hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54eac517-517e-b4b1-5434-6d3082147e4f",
  "kind": "lemma",
  "lexical_name": "hom_ext",
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
  "slug": "hom-ext--a5f4a84d61cfb1cf4d482108",
  "source": {
    "blob": "36dd7a5d4d2c4801709470a0687db88ae4e00257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 238,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f4a84d61cfb1cf4d4821081b8a0279eabd3f9cd94f818d48c4bcaddc4dfb77",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54eac517-517e-b4b1-5434-6d3082147e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_ext {f g : c.Quotient →* P} (h : f.comp c.mk' = g.comp c.mk') : f = g := by
  rw [← lift_apply_mk' f, ← lift_apply_mk' g]
  congr 1

/-- Homomorphisms on the quotient of a monoid by a congruence relation are equal if they
are equal on elements that are coercions from the monoid. -/
@[to_additive /-- Homomorphisms on the quotient of an `AddMonoid` by an additive congruence relation
are equal if they are equal on elements that are coercions from the `AddMonoid`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant36555dc783048d039fa5567534abde1e3d816842cb1aa1f07752ad6d93a58a9c.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36dd7a5d4d2c4801709470a0687db88ae4e00257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
