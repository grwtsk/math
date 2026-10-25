# ClassGroup.integralRep_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f908c9cf-dc64-bc22-61c4-2d9a9f61e230",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96bd575c-a100-242a-87c8-1d3e30d403ca",
  "kind": "theorem",
  "lexical_name": "ClassGroup.integralRep_mem_nonZeroDivisors",
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
  "slug": "classgroup-integralrep-mem-nonzerodivisors--0b02b95ed3d4789793ab5469",
  "source": {
    "blob": "7b31e1b20d6be8aabaf838d1636b5320aaba114b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 337,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b02b95ed3d4789793ab54694e17468947fef94f28ef06bbfef69630004ad530",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96bd575c-a100-242a-87c8-1d3e30d403ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.integralRep_mem_nonZeroDivisors
    {I} (hI : I ≠ 0) :
    ClassGroup.integralRep I ∈ (Ideal R)⁰ := by
  let a := I.2.choose
  have a_ne_zero' := I.2.choose_spec.1
  have a_ne_zero := mem_nonZeroDivisors_iff_ne_zero.mp a_ne_zero'
  have fa_ne_zero : (algebraMap R (FractionRing R)) a ≠ 0 :=
    IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors a_ne_zero'
  rw [mem_nonZeroDivisors_iff_ne_zero, Submodule.zero_eq_bot, Submodule.ne_bot_iff]
  obtain ⟨x, x_ne, x_mem⟩ := exists_ne_zero_mem_isInteger hI
  refine ⟨a*x, ?_, mul_ne_zero a_ne_zero x_ne⟩
  change ((algebraMap R _) a)⁻¹ * (algebraMap R _) (a * x) ∈ I
  rwa [RingHom.map_mul, ← mul_assoc, inv_mul_cancel fa_ne_zero, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant48f93bd5954ea0140a7ae8ba633f49784d65efc71395328459c3af4c71792503.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b31e1b20d6be8aabaf838d1636b5320aaba114b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
