# finiteResidueSeparationOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d7ca96d9a6f5e6349369a1c0c2717b93375692f5d923ddcf1619a494d8971f",
  "kind": "def",
  "lexical_name": "finiteResidueSeparationOpenElement",
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
  "slug": "finiteresidueseparationopenelement--c289603558e10a26c0582fc0",
  "source": {
    "blob": "815355b2ee3a8fa1bce913fe594d590fd53cbe42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant57e38a3d6d7ac8d2a6622c5afe723dda4cbd543e2ae7e8418eea2c6321274002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c289603558e10a26c0582fc06085745d1183fb07589f467638c383088aae2d48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant57e38a3d6d7ac8d2a6622c5afe723dda4cbd543e2ae7e8418eea2c6321274002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d7ca96d9a6f5e6349369a1c0c2717b93375692f5d923ddcf1619a494d8971f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteResidueSeparationOpenElement :
    OpenConjectureElement FiniteResidueSeparationStatement where
  elementId :=
    { id := { value := "open:neural-diffusion:finite-residue-separation" } }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Finite routing residue admits an exact separator"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.NeuralDiffusion.FiniteResidueSeparationStatement"
  leanDeclarationName_nonempty := by
    decide

/--
The low-dependency seed is constructive: one new Boolean probe per element
extends every old incidence coordinate and distinguishes every unequal pair.
This proves the existence statement only; route and name authority still
belong to a separately replayed rigidifier generation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant57e38a3d6d7ac8d2a6622c5afe723dda4cbd543e2ae7e8418eea2c6321274002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant57e38a3d6d7ac8d2a6622c5afe723dda4cbd543e2ae7e8418eea2c6321274002.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815355b2ee3a8fa1bce913fe594d590fd53cbe42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
