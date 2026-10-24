# punitIsTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50be3ddbf11b5e43f8a7ac9ef647a57887f94ac332ce3c95e5ea6b2d50c21897",
  "kind": "def",
  "lexical_name": "punitIsTerminal",
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
  "slug": "punitisterminal--4bca42ba3f4cb5d733be95bc",
  "source": {
    "blob": "d3c674c7d72679ce6480457bf9ae24f8566d40ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bca42ba3f4cb5d733be95bc72f7db378e6adaf9ce0b3ec8792bdd1f75d8c0a9",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50be3ddbf11b5e43f8a7ac9ef647a57887f94ac332ce3c95e5ea6b2d50c21897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def punitIsTerminal : IsTerminal (CommRingCat.of.{u} PUnit) := by
  refine IsTerminal.ofUnique (h := fun X => ⟨⟨⟨⟨1, rfl⟩, fun _ _ => rfl⟩, ?_, ?_⟩, ?_⟩)
  · dsimp
  · intros; dsimp
  · intros f; ext; rfl
set_option linter.uppercaseLean3 false in
#align CommRing.punit_is_terminal CommRingCat.punitIsTerminal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c674c7d72679ce6480457bf9ae24f8566d40ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
