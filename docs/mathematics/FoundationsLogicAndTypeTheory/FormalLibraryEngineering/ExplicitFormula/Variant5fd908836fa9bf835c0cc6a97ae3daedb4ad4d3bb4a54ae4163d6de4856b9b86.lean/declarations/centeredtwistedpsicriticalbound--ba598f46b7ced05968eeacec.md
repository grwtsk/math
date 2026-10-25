# CenteredTwistedPsiCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f663c55ef7f518f99a55944e59a49b274eccddb6a396c9fbb0d2b2c86aeee107",
  "kind": "def",
  "lexical_name": "CenteredTwistedPsiCriticalBound",
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
  "slug": "centeredtwistedpsicriticalbound--ba598f46b7ced05968eeacec",
  "source": {
    "blob": "15416067faa420ed099dd88edb1049f3767a7826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba598f46b7ced05968eeacecf46e7858881b1e463a2fd9ba998bbdb6136673e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f663c55ef7f518f99a55944e59a49b274eccddb6a396c9fbb0d2b2c86aeee107`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CenteredTwistedPsiCriticalBound
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ x : ℕ, 2 ≤ x →
      ‖centeredTwistedPsi χ x‖ ≤
        C * centeredTwistedPsiCriticalRate q x

/-- The logarithmic critical rate is bounded by every half-plus-epsilon
power.  The constant is allowed to depend on the fixed modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant5fd908836fa9bf835c0cc6a97ae3daedb4ad4d3bb4a54ae4163d6de4856b9b86.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15416067faa420ed099dd88edb1049f3767a7826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
