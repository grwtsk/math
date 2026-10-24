# IsIntegralClosure.rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee22177262b392aac5f15f3c74c2fa0fe76d6cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f59a054c-b042-292a-ae58-9e183e60cb27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67601c59-579c-cf42-02c4-793fb7c3442c",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.rank",
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
  "slug": "isintegralclosure-rank--8e94ac993c51406bd977e948",
  "source": {
    "blob": "ee22177262b392aac5f15f3c74c2fa0fe76d6cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e94ac993c51406bd977e9483ac588725486daa86f749fde5f86025891cb5ae0",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67601c59-579c-cf42-02c4-793fb7c3442c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.rank [IsPrincipalIdealRing A] [NoZeroSMulDivisors A L] :
    FiniteDimensional.finrank A C = FiniteDimensional.finrank K L := by
  haveI : Module.Free A C := IsIntegralClosure.module_free A K L C
  haveI : IsNoetherian A C := IsIntegralClosure.isNoetherian A K L C
  haveI : IsLocalization (Algebra.algebraMapSubmonoid C A⁰) L :=
    IsIntegralClosure.isLocalization A K L C
  let b := Basis.localizationLocalization K A⁰ L (Module.Free.chooseBasis A C)
  rw [FiniteDimensional.finrank_eq_card_chooseBasisIndex, FiniteDimensional.finrank_eq_card_basis b]
#align is_integral_closure.rank IsIntegralClosure.rank

variable {A K}

/- If `L` is a finite separable extension of `K = Frac(A)`, where `A` is
integrally closed and Noetherian, the integral closure of `A` in `L` is
Noetherian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee22177262b392aac5f15f3c74c2fa0fe76d6cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
