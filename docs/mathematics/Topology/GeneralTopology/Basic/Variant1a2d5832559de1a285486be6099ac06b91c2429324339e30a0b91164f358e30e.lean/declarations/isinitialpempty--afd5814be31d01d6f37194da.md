# isInitialPEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf44ba9a3ced2af956d54a78fcf99c74fe367bafa78c231d34df042b5f8da492",
  "kind": "def",
  "lexical_name": "isInitialPEmpty",
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
  "slug": "isinitialpempty--afd5814be31d01d6f37194da",
  "source": {
    "blob": "3c97bb3e9f7870e49fd906ffa0be434489682361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afd5814be31d01d6f37194da16944450b1cff0174d34b9fde89494ebe4964c7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf44ba9a3ced2af956d54a78fcf99c74fe367bafa78c231d34df042b5f8da492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isInitialPEmpty : IsInitial (TopCat.of PEmpty.{u + 1}) :=
  haveI : ∀ X, Unique (TopCat.of PEmpty.{u + 1} ⟶ X) := fun X =>
    ⟨⟨ofHom ⟨fun x => x.elim, by fun_prop⟩⟩, fun f => by ext ⟨⟩⟩
  Limits.IsInitial.ofUnique _

/-- The initial object of `Top` is `PEmpty`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c97bb3e9f7870e49fd906ffa0be434489682361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
