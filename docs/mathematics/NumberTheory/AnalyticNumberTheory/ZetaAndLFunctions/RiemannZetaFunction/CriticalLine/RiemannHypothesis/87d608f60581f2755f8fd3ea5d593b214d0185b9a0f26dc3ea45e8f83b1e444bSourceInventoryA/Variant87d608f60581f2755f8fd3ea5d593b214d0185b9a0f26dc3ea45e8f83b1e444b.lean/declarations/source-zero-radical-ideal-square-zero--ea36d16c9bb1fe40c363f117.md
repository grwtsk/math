# source_zero_radical_ideal_square_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afa45b04b04e3faa05c9b00283102a4962962526",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c7ecb22-6812-a1c4-1954-620c09e7f939",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d748aeac-d230-15e6-1908-ce71492d9647",
  "kind": "theorem",
  "lexical_name": "source_zero_radical_ideal_square_zero",
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
  "slug": "source-zero-radical-ideal-square-zero--ea36d16c9bb1fe40c363f117",
  "source": {
    "blob": "afa45b04b04e3faa05c9b00283102a4962962526",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea36d16c9bb1fe40c363f117fffdd39a9fa5b3480b75e291705a16674e847c1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d748aeac-d230-15e6-1908-ce71492d9647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_zero_radical_ideal_square_zero (A : ℝ) :
    Ring.jacobson (LowerPowerZeroFiber A) ^ 2 = ⊥ := by
  rw [pow_two (Ring.jacobson (LowerPowerZeroFiber A))]
  apply bot_unique
  apply Ideal.mul_le.mpr
  intro x hx y hy
  rw [Ideal.mem_bot]
  exact source_zero_radical_mul_eq_zero A hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444bSourceInventoryA/Variant87d608f60581f2755f8fd3ea5d593b214d0185b9a0f26dc3ea45e8f83b1e444b.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa45b04b04e3faa05c9b00283102a4962962526` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
