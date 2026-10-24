# Module.support_of_isTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:993a308a-1864-dbea-277f-4a303f978f32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b343525-3547-7731-2ca3-acf947d729ab",
  "kind": "lemma",
  "lexical_name": "Module.support_of_isTorsionFree",
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
  "slug": "module-support-of-istorsionfree--c7f250bf8f9be7599058fb76",
  "source": {
    "blob": "d0548ef864cf81a5d1a26127852a37b693c94658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f250bf8f9be7599058fb766acfe2b58fc4932aa0d027db5f2546366f2544b7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b343525-3547-7731-2ca3-acf947d729ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.support_of_isTorsionFree [IsDomain R] [IsTorsionFree R M] [Nontrivial M] :
    Module.support R M = Set.univ := by
  simp only [Set.eq_univ_iff_forall, mem_support_iff', ne_eq, smul_eq_zero, not_or]
  obtain ⟨x, hx⟩ := exists_ne (0 : M)
  exact fun p ↦ ⟨x, fun r hr ↦ ⟨fun e ↦ hr (e ▸ p.asIdeal.zero_mem), hx⟩⟩

@[deprecated (since := "2026-07-27")]
alias Module.support_of_noZeroSMulDivisors := Module.support_of_isTorsionFree

variable {N P : Type*} [AddCommGroup N] [Module R N] [AddCommGroup P] [Module R P]
variable (f : M →ₗ[R] N) (g : N →ₗ[R] P)

@[stacks 00L3 "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Support/Variant4ecc2ea4d198a5f3985bdb90e65462580195d0ead0d877efb392cf4c3b4b03c3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0548ef864cf81a5d1a26127852a37b693c94658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
