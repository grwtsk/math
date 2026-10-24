# coarsening_budget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a1ea825-c0c3-828b-2bca-02231d1d7d36",
  "kind": "theorem",
  "lexical_name": "coarsening_budget_le",
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
  "slug": "coarsening-budget-le--70d74aa97e1093316b3e44e7",
  "source": {
    "blob": "5200cbe2ad8a70d15ffab081817fbc3ca6d47456",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70d74aa97e1093316b3e44e7c26f23d739a2b1ec935aaf204d40e5a91aa5a5ef",
  "verification": {
    "reference": "docs/verification/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a1ea825-c0c3-828b-2bca-02231d1d7d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coarsening_budget_le {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (group : ι → κ) (a : ι → ℂ) :
    (∑ j, ‖joinedPort group a j‖) ≤ ∑ i, ‖a i‖ := by
  calc
    _ ≤ ∑ j, ∑ i, ‖if group i = j then a i else 0‖ := by
      exact Finset.sum_le_sum (fun j _ => norm_sum_le _ _)
    _ = ∑ i, ‖a i‖ := by simp_rw [apply_ite]; rw [Finset.sum_comm]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PortBudget/Variantf6468245885fffd4302bc44781c003681bcbf153d49493c66d89d537189bd739.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5200cbe2ad8a70d15ffab081817fbc3ca6d47456` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
