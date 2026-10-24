# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f06de7ccbaf712e0bfd45500903fe02c46882c8ac99249006f9135968c70367b",
  "kind": "def",
  "lexical_name": "Valid",
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
  "slug": "valid--36595de637dde2f9cdcf32ef",
  "source": {
    "blob": "e5fb9c11aece8ab6677425a8937416a5e5991cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36595de637dde2f9cdcf32ef047e7f7a0bd41fa6a3f9b47736c5e0a7ca0ec95c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f06de7ccbaf712e0bfd45500903fe02c46882c8ac99249006f9135968c70367b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Valid (ledger : Ledger) : Prop :=
  (ledger.motifs.map (·.id)).Nodup ∧
  (ledger.strategies.map (·.id)).Nodup ∧
  (∀ motif ∈ ledger.motifs, motif.Valid) ∧
  (∀ strategy ∈ ledger.strategies,
    strategy.Valid ∧
    ∀ motifId ∈ strategy.motifObservationIds,
      ∃ motif ∈ ledger.motifs,
        motif.id = motifId ∧ motif.theoremId = strategy.theoremId)

end Ledger

end MathDiscovery.ProofStrategy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Validation/Variantb32c03f7ebfcd958c3696f9746390033e3e8748f8aa2a181b19b10097c98db8f.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fb9c11aece8ab6677425a8937416a5e5991cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
