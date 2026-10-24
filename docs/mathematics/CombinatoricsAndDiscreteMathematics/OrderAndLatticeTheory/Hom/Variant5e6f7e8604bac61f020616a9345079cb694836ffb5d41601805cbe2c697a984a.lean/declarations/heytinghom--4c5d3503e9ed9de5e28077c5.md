# HeytingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5686ba6535ea14f928e7a758eeb25f602b8a2a6953b1a3281a6b8a0d830fce60",
  "kind": "structure",
  "lexical_name": "HeytingHom",
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
  "slug": "heytinghom--4c5d3503e9ed9de5e28077c5",
  "source": {
    "blob": "52d5951458dd0cea30737af4e56535abf3ae7f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c5d3503e9ed9de5e28077c512486a3fbdf2dfeb64853b8f013d3278796857f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5686ba6535ea14f928e7a758eeb25f602b8a2a6953b1a3281a6b8a0d830fce60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeytingHom (α β : Type*) [HeytingAlgebra α] [HeytingAlgebra β] extends
  LatticeHom α β where
  /-- The proposition that a Heyting homomorphism preserves the bottom element.-/
  protected map_bot' : toFun ⊥ = ⊥
  /-- The proposition that a Heyting homomorphism preserves the Heyting implication.-/
  protected map_himp' : ∀ a b, toFun (a ⇨ b) = toFun a ⇨ toFun b
#align heyting_hom HeytingHom

/-- The type of co-Heyting homomorphisms from `α` to `β`. Bounded lattice homomorphisms that
preserve difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d5951458dd0cea30737af4e56535abf3ae7f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
