# IsMarkovKernel.compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d09e6f01964d80e62f28d94d916086915b3a69f87062fc56970c864d1481262e",
  "kind": "instance",
  "lexical_name": "IsMarkovKernel.compProd",
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
  "slug": "ismarkovkernel-compprod--364d5b22b74fd982e6e17bac",
  "source": {
    "blob": "ead17e0147675af98c5315926e73cc1861800115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 526,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:364d5b22b74fd982e6e17bacecc73fce55826eee3f97e7544337fb0beefcf3a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d09e6f01964d80e62f28d94d916086915b3a69f87062fc56970c864d1481262e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsMarkovKernel.compProd (κ : Kernel α β) [IsMarkovKernel κ] (η : Kernel (α × β) γ)
    [IsMarkovKernel η] : IsMarkovKernel (κ ⊗ₖ η) where
  isProbabilityMeasure a := ⟨by simp [compProd_apply]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantb3a0fbffb9bd65e2c59dee7637a82e162cd871d5f1ee00a22f5891473b98f3f1.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead17e0147675af98c5315926e73cc1861800115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
