# FP.finsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45ccbc9d-c675-06c1-d077-8f7f0f71ef4f",
  "kind": "theorem",
  "lexical_name": "FP.finsetProd",
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
  "slug": "fp-finsetprod--9c1959100c9b78c4ec4603eb",
  "source": {
    "blob": "98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c1959100c9b78c4ec4603ebed1ea974fb6116ca7aaf825662e9d5230156a908",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ccbc9d-c675-06c1-d077-8f7f0f71ef4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP.finsetProd {M} [CommMonoid M] (a : Stream' M) (s : Finset ℕ) (hs : s.Nonempty) :
    FP a (s.prod fun i => a.get i) := by
  refine FP_drop_subset_FP _ (s.min' hs) ?_
  induction s using Finset.eraseInduction with | H s ih => _
  rw [← Finset.mul_prod_erase _ _ (s.min'_mem hs), ← Stream'.head_drop]
  rcases (s.erase (s.min' hs)).eq_empty_or_nonempty with h | h
  · rw [h, Finset.prod_empty, mul_one]
    exact FP.head _
  · apply FP.cons
    rw [Stream'.tail_eq_drop, Stream'.drop_drop, add_comm]
    have hmin : s.min' hs + 1 ≤ (s.erase (s.min' hs)).min' h :=
      Nat.succ_le_of_lt (Finset.min'_lt_of_mem_erase_min' _ _ <| Finset.min'_mem _ _)
    obtain ⟨d, hd⟩ := Nat.exists_eq_add_of_le hmin
    have := ih _ (s.min'_mem hs) h
    rw [hd, ← Stream'.drop_drop, add_comm] at this
    exact FP_drop_subset_FP _ _ this

@[deprecated (since := "2026-04-08")] alias FS.finset_sum := FS.finsetSum

@[to_additive existing, deprecated (since := "2026-04-08")]
alias FP.finset_prod := FP.finsetProd

@[deprecated (since := "2026-08-14")] alias FS.head' := FS.head

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.head' := FP.head

@[deprecated (since := "2026-08-14")] alias FS.tail' := FS.of_tail

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.tail' := FP.of_tail

@[deprecated (since := "2026-08-14")] alias FS.tail := FS.of_tail

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.tail := FP.of_tail

@[deprecated (since := "2026-08-14")] alias FS.cons' := FS.cons

@[to_additive existing, deprecated (since := "2026-08-14")]
alias FP.cons' := FP.cons

end Hindman
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
