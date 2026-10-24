# Injective.mem_periodicPts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a244c040-41b4-14c9-0dae-88e3ff91ceec",
  "kind": "theorem",
  "lexical_name": "Injective.mem_periodicPts",
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
  "slug": "injective-mem-periodicpts--f9c980a15d538c909f86eca3",
  "source": {
    "blob": "5d44497472643f63ea02094870e804ea8ac64bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c980a15d538c909f86eca308f81cd9a7e16e16e31ff9e05c66907ccdaf01d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a244c040-41b4-14c9-0dae-88e3ff91ceec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Injective.mem_periodicPts [Finite α] (h : Injective f) (x : α) : x ∈ periodicPts f := by
  obtain ⟨m, n, heq, hne⟩ : ∃ m n, f^[m] x = f^[n] x ∧ m ≠ n := by
    simpa [Injective] using not_injective_infinite_finite (f^[·] x)
  rcases lt_or_gt_of_ne hne with hlt | hlt
  · exact mk_mem_periodicPts (by omega) (iterate_cancel h heq.symm)
  · exact mk_mem_periodicPts (by omega) (iterate_cancel h heq)

@[deprecated (since := "2025-04-27")]
alias mem_periodicPts_of_injective :=  Injective.mem_periodicPts

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d44497472643f63ea02094870e804ea8ac64bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
