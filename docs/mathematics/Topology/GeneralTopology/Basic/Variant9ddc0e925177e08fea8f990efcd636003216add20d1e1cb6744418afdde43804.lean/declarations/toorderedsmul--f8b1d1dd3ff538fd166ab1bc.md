# toOrderedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4285a781a34aaf065e62d11c6e9ef43886cf7728",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 899,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2107707e-3250-9f8f-2985-aca56cbe950b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:882dbfc4-6145-ecd9-3e7a-6d74942e47d1",
  "kind": "theorem",
  "lexical_name": "toOrderedSMul",
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
  "slug": "toorderedsmul--f8b1d1dd3ff538fd166ab1bc",
  "source": {
    "blob": "4285a781a34aaf065e62d11c6e9ef43886cf7728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 899,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b1d1dd3ff538fd166ab1bce88b263d1daf6ecfadebd376ab9482e4895c5d16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:882dbfc4-6145-ecd9-3e7a-6d74942e47d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toOrderedSMul : OrderedSMul ℝ K :=
  OrderedSMul.mk' fun a b r hab hr => by
    replace hab := hab.le
    rw [IsROrC.le_iff_re_im] at hab
    rw [IsROrC.le_iff_re_im, smul_re, smul_re, smul_im, smul_im]
    exact hab.imp (fun h => mul_le_mul_of_nonneg_left h hr.le) (congr_arg _)

scoped[ComplexOrder] attribute [instance] IsROrC.toOrderedSMul

end Order

open ComplexConjugate

section CleanupLemmas

local notation "reR" => @IsROrC.re ℝ _
local notation "imR" => @IsROrC.im ℝ _
local notation "IR" => @IsROrC.I ℝ _
local notation "normSqR" => @IsROrC.normSq ℝ _

@[simp, isROrC_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4285a781a34aaf065e62d11c6e9ef43886cf7728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
