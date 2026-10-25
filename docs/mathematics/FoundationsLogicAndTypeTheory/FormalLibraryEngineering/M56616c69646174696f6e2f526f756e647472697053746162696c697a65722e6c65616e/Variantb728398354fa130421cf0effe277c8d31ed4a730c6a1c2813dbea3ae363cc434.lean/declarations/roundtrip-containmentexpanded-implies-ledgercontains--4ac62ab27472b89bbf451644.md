# roundtrip_containmentExpanded_implies_ledgerContains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89946446-3754-b9c5-30cf-c830647227dd",
  "kind": "theorem",
  "lexical_name": "roundtrip_containmentExpanded_implies_ledgerContains",
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
  "slug": "roundtrip-containmentexpanded-implies-ledgercontains--4ac62ab27472b89bbf451644",
  "source": {
    "blob": "38b362d5ee64ef7214a7a8749cac80a8a35bfb02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac62ab27472b89bbf451644b33e4e72010cc1dea489fc85059b50c93acdb8a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89946446-3754-b9c5-30cf-c830647227dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundtrip_containmentExpanded_implies_ledgerContains
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (h :
      Think.RoundtripStabilizer.statusOf eqp pot previous next =
        Think.RoundtripStabilizer.RoundtripStabilityStatus.containmentExpanded) :
    Think.RoundtripStabilizer.ledgerContains
      previous.containedLedger
      next.containedLedger := by
  exact
    Think.RoundtripStabilizer.containmentExpanded_implies_ledgerContains
      eqp
      pot
      previous
      next
      h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e/Variantb728398354fa130421cf0effe277c8d31ed4a730c6a1c2813dbea3ae363cc434.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b362d5ee64ef7214a7a8749cac80a8a35bfb02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
