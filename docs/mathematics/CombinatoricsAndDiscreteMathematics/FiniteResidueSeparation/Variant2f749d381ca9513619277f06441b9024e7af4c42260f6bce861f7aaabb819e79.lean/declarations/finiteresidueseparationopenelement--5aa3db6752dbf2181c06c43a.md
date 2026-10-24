# finiteResidueSeparationOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2d1531661d25f85f638e4566eb74c836536e0b88037f58e81e99afa4f454f3d",
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
  "slug": "finiteresidueseparationopenelement--5aa3db6752dbf2181c06c43a",
  "source": {
    "blob": "00eb0b00e69d99f1c23ccb3ba9a94d7d33bfd134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aa3db6752dbf2181c06c43a2ea55a58c91fe9cd46628a7f9df25a645913c6fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2d1531661d25f85f638e4566eb74c836536e0b88037f58e81e99afa4f454f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteResidueSeparation/Variant2f749d381ca9513619277f06441b9024e7af4c42260f6bce861f7aaabb819e79.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00eb0b00e69d99f1c23ccb3ba9a94d7d33bfd134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
