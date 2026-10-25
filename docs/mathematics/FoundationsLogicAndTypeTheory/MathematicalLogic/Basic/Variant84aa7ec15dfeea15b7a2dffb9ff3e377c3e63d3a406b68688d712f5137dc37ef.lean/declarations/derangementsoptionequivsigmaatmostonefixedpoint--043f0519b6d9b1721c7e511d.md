# derangementsOptionEquivSigmaAtMostOneFixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef823298beff4f8846404816b4e7c448c26d3e82311c02021022cabc2434d5f9",
  "kind": "def",
  "lexical_name": "derangementsOptionEquivSigmaAtMostOneFixedPoint",
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
  "slug": "derangementsoptionequivsigmaatmostonefixedpoint--043f0519b6d9b1721c7e511d",
  "source": {
    "blob": "36f6a28fd3bc1167ca2a34c193beccbe0808be97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:043f0519b6d9b1721c7e511df976c3807fda313aea660b9449943887e893f2e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef823298beff4f8846404816b4e7c448c26d3e82311c02021022cabc2434d5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derangementsOptionEquivSigmaAtMostOneFixedPoint :
    derangements (Option α) ≃ Σa : α, { f : Perm α | fixedPoints f ⊆ {a} } := by
  have fiber_none_is_false : Equiv.RemoveNone.fiber (@none α) → False := by
    rw [Equiv.RemoveNone.fiber_none]
    exact IsEmpty.false
  calc
    derangements (Option α) ≃ Equiv.Perm.decomposeOption '' derangements (Option α) :=
      Equiv.image _ _
    _ ≃ Σa : Option α, ↥(Equiv.RemoveNone.fiber a) := setProdEquivSigma _
    _ ≃ Σa : α, ↥(Equiv.RemoveNone.fiber (some a)) :=
      sigmaOptionEquivOfSome _ fiber_none_is_false
    _ ≃ Σa : α, { f : Perm α | fixedPoints f ⊆ {a} } := by
      simp_rw [Equiv.RemoveNone.fiber_some]
      rfl

/-- The set of derangements on `Option α` is equivalent to the union over all `a : α` of
    "derangements on `α` ⊕ derangements on `{a}ᶜ`". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f6a28fd3bc1167ca2a34c193beccbe0808be97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
