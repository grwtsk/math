# exactContextualSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03b6c0e81fb3a16c65cf8bd90537561c28bf5c4ed089dbea6b132eb9b376d0e4",
  "kind": "def",
  "lexical_name": "exactContextualSetoid",
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
  "slug": "exactcontextualsetoid--aac41a6457078b1c1b494321",
  "source": {
    "blob": "d92d24856907b4155bc70c5723a27135c96080fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant122315ca19e70cd04bec18191b60175ee0d23d69f46d5eb43c2306c5e56321fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aac41a6457078b1c1b49432166201799116502d0c6a62e1cfd71482c6441a05f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant122315ca19e70cd04bec18191b60175ee0d23d69f46d5eb43c2306c5e56321fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03b6c0e81fb3a16c65cf8bd90537561c28bf5c4ed089dbea6b132eb9b376d0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exactContextualSetoid
    (cut : EvidenceCut)
    (protected : ProtectedFeatureProfile)
    (context : ContextId) :
    Setoid {profile : ConceptProfile cut //
      profile.context = context} where
  r left right :=
    ExactContextualEquivalent protected left.1 right.1
  iseqv :=
    ⟨fun profile => exactEquivalent_refl profile.1,
      fun {_ _} relation => exactEquivalent_symm relation,
      fun {_ _ _} first second =>
        exactEquivalent_trans first second⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant122315ca19e70cd04bec18191b60175ee0d23d69f46d5eb43c2306c5e56321fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant122315ca19e70cd04bec18191b60175ee0d23d69f46d5eb43c2306c5e56321fc.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92d24856907b4155bc70c5723a27135c96080fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
