# twistedCohomologous_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f038876-d2e8-30eb-8aa3-3dd982fc747e",
  "kind": "theorem",
  "lexical_name": "twistedCohomologous_equivalence",
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
  "slug": "twistedcohomologous-equivalence--7e185555a8e409f8f1beed76",
  "source": {
    "blob": "515f39b1862dfff8dd828ed7b8be3b00690a9fac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e185555a8e409f8f1beed76c5cbd1705f62d4464d4b54a59ba4ba8dacf3c68b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f038876-d2e8-30eb-8aa3-3dd982fc747e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twistedCohomologous_equivalence :
    Equivalence (@twistedCohomologous n _ A _) := by
  refine ⟨?_, ?_, ?_⟩
  · intro cochain
    refine ⟨0, ?_⟩
    rw [sub_self]
    exact twistedD0_zero.symm
  · intro left right h
    rcases h with ⟨potential, hpotential⟩
    refine ⟨-potential, ?_⟩
    calc
      left.1 - right.1 = -(right.1 - left.1) := by abel
      _ = -(twistedD0 potential) := congrArg Neg.neg hpotential
      _ = twistedD0 (-potential) := (twistedD0_neg potential).symm
  · intro left middle right hlm hmr
    rcases hlm with ⟨leftPotential, hleft⟩
    rcases hmr with ⟨rightPotential, hright⟩
    refine ⟨leftPotential + rightPotential, ?_⟩
    calc
      right.1 - left.1 =
          (middle.1 - left.1) + (right.1 - middle.1) := by abel
      _ = twistedD0 leftPotential + twistedD0 rightPotential := by
        rw [hleft, hright]
      _ = twistedD0 (leftPotential + rightPotential) :=
        (twistedD0_add leftPotential rightPotential).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515f39b1862dfff8dd828ed7b8be3b00690a9fac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
