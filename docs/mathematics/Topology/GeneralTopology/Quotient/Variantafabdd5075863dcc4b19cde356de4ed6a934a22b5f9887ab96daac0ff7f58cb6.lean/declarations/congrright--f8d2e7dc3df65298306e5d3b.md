# congrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29bc36e43626c7c8352d16e30bf9e2731c66be580e8b16a180a83454ea3b0f19",
  "kind": "def",
  "lexical_name": "congrRight",
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
  "slug": "congrright--f8d2e7dc3df65298306e5d3b",
  "source": {
    "blob": "2876f535d9739231933be28e4c5380a83324068c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variantafabdd5075863dcc4b19cde356de4ed6a934a22b5f9887ab96daac0ff7f58cb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8d2e7dc3df65298306e5d3bf45e2d342c9cf412ad4091c7c655db4cf2504ec4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variantafabdd5075863dcc4b19cde356de4ed6a934a22b5f9887ab96daac0ff7f58cb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29bc36e43626c7c8352d16e30bf9e2731c66be580e8b16a180a83454ea3b0f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def congrRight {r r' : X → X → Prop} (eq : ∀ x₁ x₂, r x₁ x₂ ↔ r' x₁ x₂) :
    Quot r ≃ₜ Quot r' := Quot.congr (Homeomorph.refl X) eq

/-- A homeomorphism `e : X ≃ₜ Y` generates an equivalence between the quotient space of `X`
by a relation `rX` and the quotient space of `Y` by the image of this relation under `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variantafabdd5075863dcc4b19cde356de4ed6a934a22b5f9887ab96daac0ff7f58cb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variantafabdd5075863dcc4b19cde356de4ed6a934a22b5f9887ab96daac0ff7f58cb6.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2876f535d9739231933be28e4c5380a83324068c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
