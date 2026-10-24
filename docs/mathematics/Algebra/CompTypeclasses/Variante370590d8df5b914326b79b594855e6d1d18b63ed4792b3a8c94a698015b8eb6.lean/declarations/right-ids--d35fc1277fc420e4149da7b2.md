# right_ids

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b0020b481bb880446b10bfe56b276795e889b18386986d204cdd90aa2dd0605",
  "kind": "instance",
  "lexical_name": "right_ids",
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
  "slug": "right-ids--d35fc1277fc420e4149da7b2",
  "source": {
    "blob": "65349c38fd8acd2370cd6caedb36a27c21fb5b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 161,
    "path": "GRWTSK/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d35fc1277fc420e4149da7b2d46bae8f6b89c71f29ee3ed0a0ec7d2484d8eeeb",
  "verification": {
    "reference": "docs/verification/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b0020b481bb880446b10bfe56b276795e889b18386986d204cdd90aa2dd0605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance right_ids : RingHomCompTriple σ₁₂ (RingHom.id R₂) σ₁₂ :=
  ⟨by
    ext
    simp⟩
#align ring_hom_comp_triple.right_ids RingHomCompTriple.right_ids

end RingHomCompTriple

/-- Class expressing the fact that a `RingHom` is surjective. This is needed in the context
of semilinear maps, where some lemmas require this. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CompTypeclasses/Variante370590d8df5b914326b79b594855e6d1d18b63ed4792b3a8c94a698015b8eb6.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65349c38fd8acd2370cd6caedb36a27c21fb5b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
