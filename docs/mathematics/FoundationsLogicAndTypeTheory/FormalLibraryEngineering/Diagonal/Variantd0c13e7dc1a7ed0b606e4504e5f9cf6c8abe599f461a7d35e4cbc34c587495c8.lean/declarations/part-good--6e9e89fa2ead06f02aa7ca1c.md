# part_good

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:942c39d2-888d-363b-6014-6d5d7b1a973f",
  "kind": "theorem",
  "lexical_name": "part_good",
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
  "slug": "part-good--6e9e89fa2ead06f02aa7ca1c",
  "source": {
    "blob": "92fe1999acd4103b1b0e828ca5aeacf8f814476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 978,
    "line": 964,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9e89fa2ead06f02aa7ca1cc53f3376a46bb3f65b6ebfe45274a3ed65b52988",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:942c39d2-888d-363b-6014-6d5d7b1a973f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 964–978.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem part_good {v : Expr S}
    (hv : HasType P Γ v B.relational.probe.carrier) (mv : WellModed γ v .data)
    (hresp : Proves P Γ γ (B.response L.code KY.code KP.code v)) :
    Proves P Γ γ (B.good L.code KY.code KP.code (B.part L.code KY.code KP.code v)) := by
  have hp := H.part_typed KY KP hv mv
  exact H.good_backward KY KP hp.1 hp.2 (H.part_propertyG KY KP hv mv hresp)
end

section
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {B : SpecializedCode S}
    (H : B.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantd0c13e7dc1a7ed0b606e4504e5f9cf6c8abe599f461a7d35e4cbc34c587495c8.lean#L964).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fe1999acd4103b1b0e828ca5aeacf8f814476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
