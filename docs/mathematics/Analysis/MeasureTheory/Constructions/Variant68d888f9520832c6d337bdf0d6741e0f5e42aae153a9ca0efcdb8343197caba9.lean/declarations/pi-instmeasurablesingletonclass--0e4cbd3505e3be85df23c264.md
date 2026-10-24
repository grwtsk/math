# Pi.instMeasurableSingletonClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecec8beb83e5e4e5b5ca3ecf56f784afb5da6c279f86b056a182c109dd20e7c9",
  "kind": "instance",
  "lexical_name": "Pi.instMeasurableSingletonClass",
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
  "slug": "pi-instmeasurablesingletonclass--0e4cbd3505e3be85df23c264",
  "source": {
    "blob": "8dc7e13c975ea4399781d9b1eb72c50572a31561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 675,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e4cbd3505e3be85df23c2645babbbd8c2c39368ac6aba4fbf4689000cd5cf96",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecec8beb83e5e4e5b5ca3ecf56f784afb5da6c279f86b056a182c109dd20e7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instMeasurableSingletonClass [Countable δ] [∀ a, MeasurableSingletonClass (X a)] :
    MeasurableSingletonClass (∀ a, X a) :=
  ⟨fun f => univ_pi_singleton f ▸ MeasurableSet.univ_pi fun t => measurableSet_singleton (f t)⟩

variable (X)

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc7e13c975ea4399781d9b1eb72c50572a31561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
