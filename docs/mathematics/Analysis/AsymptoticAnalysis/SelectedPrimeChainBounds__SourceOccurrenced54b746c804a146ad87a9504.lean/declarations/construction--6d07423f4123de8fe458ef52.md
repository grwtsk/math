# Construction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3004235390d2a002f1d218a5e245439eb1006cd4d7a600b522e93d2de12ac1b7",
  "kind": "def",
  "lexical_name": "Construction",
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
  "slug": "construction--6d07423f4123de8fe458ef52",
  "source": {
    "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 13,
    "path": "GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d07423f4123de8fe458ef522a1d2b378c8739e0713c3ce7085649ed32444694",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3004235390d2a002f1d218a5e245439eb1006cd4d7a600b522e93d2de12ac1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Construction : Prop :=
  ∃ (A : ReserveFunctional) (C q η : ℝ), 0 ≤ C ∧ 0 ≤ q ∧ 0 < η ∧
    ∀ T : ℝ, 0 ≤ T → ∃ chain : CompletionChain T,
      (∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η) ∧
      ∀ j, potential A (chain.states (j+1)) T ≤
        Real.exp (C*harmonicMass (chain.blocks j))*potential A (chain.states j) T+
        C*harmonicMass (chain.blocks j)*(1+T)^q

/-- Conditional conversion from the old stronger interface retains bookkeeping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrenced54b746c804a146ad87a9504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SelectedPrimeChainBounds.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5746c8afdcac168dc95ad31eaee9503f9551989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
