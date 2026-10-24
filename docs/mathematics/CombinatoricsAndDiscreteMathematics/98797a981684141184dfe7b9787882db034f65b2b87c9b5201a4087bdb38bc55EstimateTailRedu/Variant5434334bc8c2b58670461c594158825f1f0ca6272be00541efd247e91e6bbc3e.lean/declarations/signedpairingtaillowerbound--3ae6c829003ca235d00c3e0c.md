# SignedPairingTailLowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26d05e34f68e9582e9d962c2764d723dc999df908f4fbd4dc48cb7146df51d20",
  "kind": "def",
  "lexical_name": "SignedPairingTailLowerBound",
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
  "slug": "signedpairingtaillowerbound--3ae6c829003ca235d00c3e0c",
  "source": {
    "blob": "89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ae6c829003ca235d00c3e0ca8b97a230ccc785038f76e6ee548fa0b2b3dae94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26d05e34f68e9582e9d962c2764d723dc999df908f4fbd4dc48cb7146df51d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SignedPairingTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        -C ≤
          signedPairing
            Realization.explicitSecondDerivative A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/98797a981684141184dfe7b9787882db034f65b2b87c9b5201a4087bdb38bc55EstimateTailRedu/Variant5434334bc8c2b58670461c594158825f1f0ca6272be00541efd247e91e6bbc3e.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a5ecfd186f5bdf5b34b6cbe0b602d0c88acacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
