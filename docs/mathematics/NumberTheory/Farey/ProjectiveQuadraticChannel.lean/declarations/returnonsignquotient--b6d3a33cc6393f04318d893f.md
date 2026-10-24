# returnOnSignQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ae1301bbf33b3c6c632d4b318d2dc8bfb69472f6e8b4d40e6bce0cb1e6d87d2",
  "kind": "def",
  "lexical_name": "returnOnSignQuotient",
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
  "slug": "returnonsignquotient--b6d3a33cc6393f04318d893f",
  "source": {
    "blob": "05c69220b9c2d37aa58346bb6a7aaf01401e661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d3a33cc6393f04318d893f1b5e2d43f115f304b45b4ff3c982dfadd13e70e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ae1301bbf33b3c6c632d4b318d2dc8bfb69472f6e8b4d40e6bce0cb1e6d87d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def returnOnSignQuotient : SignOrbitQuotient → SignOrbitQuotient :=
  Quotient.map (fun v : Vec3 => modThreeReturn.mulVec v) (by
    intro a b hab
    change modThreeReturn.mulVec b = modThreeReturn.mulVec a ∨
      modThreeReturn.mulVec b = -(modThreeReturn.mulVec a)
    rcases hab with hab | hab
    · exact Or.inl (by rw [hab])
    · exact Or.inr (by rw [hab, modThreeReturn_mulVec_neg]))

/-- The sign-invariant readout descends as an ACTUAL function on
the quotient: no choice of oriented representative is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c69220b9c2d37aa58346bb6a7aaf01401e661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
