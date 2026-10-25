# exists_sharp_extra_bijective_on_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f12bbcc-8fb0-0923-9c33-cbc790df8d28",
  "kind": "theorem",
  "lexical_name": "exists_sharp_extra_bijective_on_kernel",
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
  "slug": "exists-sharp-extra-bijective-on-kernel--4f68752db366dbac4150e1e7",
  "source": {
    "blob": "bdc48b442b8cdfa52c21531bad31fd711889892b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/Logic/InformationLoss/SharpKernelBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f68752db366dbac4150e1e7ce6f2a93e74c266324c72484e644d3cfd53cff02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/SharpKernelBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f12bbcc-8fb0-0923-9c33-cbc790df8d28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sharp_extra_bijective_on_kernel
    (P : V →ₗ[K] Y) :
    ∃ Q : V →ₗ[K] P.ker,
      Function.Injective (pairedLinearObservation P Q) ∧
      Function.Bijective (extraOnOldKernel P Q) := by
  obtain ⟨S, hS⟩ := exists_old_kernel_complement P
  obtain ⟨Q, hfix⟩ := exists_kernel_retraction_of_isCompl P S hS
  refine ⟨Q, sharp_extra_of_kernel_retraction P Q hfix, ?_⟩
  constructor
  · exact extraOnOldKernel_injective P Q
      (sharp_extra_of_kernel_retraction P Q hfix)
  · intro x
    refine ⟨x, ?_⟩
    exact hfix x

end GRWTSK.Logic.InformationLoss
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/SharpKernelBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/SharpKernelBijection.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc48b442b8cdfa52c21531bad31fd711889892b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
