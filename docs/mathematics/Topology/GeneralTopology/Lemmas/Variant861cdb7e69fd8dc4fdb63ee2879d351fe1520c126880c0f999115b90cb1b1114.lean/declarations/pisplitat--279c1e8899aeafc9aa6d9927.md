# piSplitAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e09f18b4da94e0aa4d6e31c88439bfa0357f1d5d3010ce0411b9cee94c724a9e",
  "kind": "def",
  "lexical_name": "piSplitAt",
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
  "slug": "pisplitat--279c1e8899aeafc9aa6d9927",
  "source": {
    "blob": "cad583ece7c7ff939321d56852f21cb09358278d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 393,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:279c1e8899aeafc9aa6d99273510a8a2f12671874e788b7845ea97604cf79225",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e09f18b4da94e0aa4d6e31c88439bfa0357f1d5d3010ce0411b9cee94c724a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piSplitAt (Y : ι → Type*) [∀ j, TopologicalSpace (Y j)] :
    (∀ j, Y j) ≃ₜ Y i × ∀ j : { j // j ≠ i }, Y j where
  toEquiv := Equiv.piSplitAt i Y
  continuous_invFun :=
    continuous_pi fun j => by
      dsimp only [Equiv.piSplitAt]
      split_ifs with h
      · subst h
        exact continuous_fst
      · exact (continuous_apply _).comp continuous_snd

variable (Y)

/-- A product of copies of a topological space can be split as the binary product of one copy and
  the product of all the remaining copies. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant861cdb7e69fd8dc4fdb63ee2879d351fe1520c126880c0f999115b90cb1b1114.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cad583ece7c7ff939321d56852f21cb09358278d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
