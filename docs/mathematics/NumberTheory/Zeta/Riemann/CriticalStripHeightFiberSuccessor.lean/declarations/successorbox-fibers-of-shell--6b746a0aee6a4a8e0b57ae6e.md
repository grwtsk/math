# successorBox_fibers_of_shell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b1c964f-9d8d-f9ba-fc31-eea04357e395",
  "kind": "theorem",
  "lexical_name": "successorBox_fibers_of_shell",
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
  "slug": "successorbox-fibers-of-shell--6b746a0aee6a4a8e0b57ae6e",
  "source": {
    "blob": "5b40ca6e528ddc4effd3c6ad3777481e36f66f51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b746a0aee6a4a8e0b57ae6e11a30821926e1cec643cb5e4d2c614810b846b94",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b1c964f-9d8d-f9ba-fc31-eea04357e395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem successorBox_fibers_of_shell {N : ℕ} (hbase : WindowRH N)
    (hshell : ShellRH N) : TargetCapacity (successorBox N) := by
  have hnext : WindowRH (N+1) := (window_succ_iff N).mpr ⟨hbase,hshell⟩
  apply targetCapacity_of_rhOn
  intro z hz hz0
  have hb := mem_successorBox.mp hz
  have hnonneg : 0 ≤ z.im := (Nat.cast_nonneg N).trans hb.2.2.1
  have hwindow : z ∈ heightWindow (N+1) := by
    change |ZetaCommutatorRoot.root.heightAt z| ≤ ((N+1 : ℕ) : ℝ)
    rw [ZetaCommutatorRoot.heightAt_eq_im,abs_of_nonneg hnonneg]
    exact hb.2.2.2
  exact hnext z hwindow hz0

/-- This equivalence is relative to the independently supplied previous window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberSuccessor.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b40ca6e528ddc4effd3c6ad3777481e36f66f51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
