# tt04_selectedWitnessSound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2733bfe8-c793-2c90-60e1-06aef026f79f",
  "kind": "theorem",
  "lexical_name": "tt04_selectedWitnessSound",
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
  "slug": "tt04-selectedwitnesssound--bba6eaf2ffeaf9993b9bbce9",
  "source": {
    "blob": "2be068a39d462eeeced10abbb24ddced0e83d218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT04SelectedWitnessSoundness/Variantf9a870886450191de71e53795e0c5d4e02d9023e4d5c0d99fe7b4db3cab6ce1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba6eaf2ffeaf9993b9bbce947c84fe94ba8393705f6529163186ed00718d95a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT04SelectedWitnessSoundness/Variantf9a870886450191de71e53795e0c5d4e02d9023e4d5c0d99fe7b4db3cab6ce1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2733bfe8-c793-2c90-60e1-06aef026f79f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tt04_selectedWitnessSound
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) :
    profile.admissible input selected.value :=
  selected.intervalWitness.evidence

end FCRS.Transport.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT04SelectedWitnessSoundness/Variantf9a870886450191de71e53795e0c5d4e02d9023e4d5c0d99fe7b4db3cab6ce1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT04SelectedWitnessSoundness/Variantf9a870886450191de71e53795e0c5d4e02d9023e4d5c0d99fe7b4db3cab6ce1c.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be068a39d462eeeced10abbb24ddced0e83d218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
