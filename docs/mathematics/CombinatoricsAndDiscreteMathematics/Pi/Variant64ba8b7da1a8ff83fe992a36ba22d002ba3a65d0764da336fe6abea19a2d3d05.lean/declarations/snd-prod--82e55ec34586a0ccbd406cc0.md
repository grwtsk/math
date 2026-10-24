# snd_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f2fb429-4a93-f0a5-aaff-7ae00d056cb1",
  "kind": "theorem",
  "lexical_name": "snd_prod",
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
  "slug": "snd-prod--82e55ec34586a0ccbd406cc0",
  "source": {
    "blob": "4ee7d4e5a0f3df81b4e038fcb7f30d5c5db00704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e55ec34586a0ccbd406cc01b2c3cf911649d31d75a14672b4cb214ecd53103",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f2fb429-4a93-f0a5-aaff-7ae00d056cb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_prod : (∏ c ∈ s, f c).2 = ∏ c ∈ s, (f c).2 :=
  map_prod (MonoidHom.snd α β) f s

end Prod

section MulEquiv

/-- The canonical isomorphism between the monoid of homomorphisms from a finite product of
commutative monoids to another commutative monoid and the product of the homomorphism monoids. -/
@[to_additive "The canonical isomorphism between the additive monoid of homomorphisms from
a finite product of additive commutative monoids to another additive commutative monoid and
the product of the homomorphism monoids."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ee7d4e5a0f3df81b4e038fcb7f30d5c5db00704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
