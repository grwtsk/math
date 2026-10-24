# sum_sacEntry_relabel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f2f87c8-06f6-3a44-2c52-59b19329505f",
  "kind": "theorem",
  "lexical_name": "sum_sacEntry_relabel",
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
  "slug": "sum-sacentry-relabel--a01fb5e3e58346ada8460e3d",
  "source": {
    "blob": "7485cdf53c855ccabd410ce7351ea37ed0a77c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 459,
    "path": "GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01fb5e3e58346ada8460e3d36a8c6d850b0ac2544814783f543b6218e7e553d",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f2f87c8-06f6-3a44-2c52-59b19329505f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_sacEntry_relabel {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (f : ℚ → ℚ) :
    (∑ i : Fin n, ∑ j : Fin n,
      f (sacEntry (conjugate g.toPerm H) i j)) =
    ∑ i : Fin n, ∑ j : Fin n, f (sacEntry H i j) := by
  simp_rw [sacEntry_conjugate_hammingIso]
  calc
    (∑ i : Fin n, ∑ j : Fin n,
      f (sacEntry H (g.coordinates.symm i) (g.coordinates.symm j))) =
        ∑ i : Fin n,
          (fun a => ∑ j : Fin n,
            f (sacEntry H a (g.coordinates.symm j)))
            (g.coordinates.symm i) := rfl
    _ = ∑ a : Fin n, ∑ j : Fin n,
          f (sacEntry H a (g.coordinates.symm j)) :=
      Equiv.sum_comp g.coordinates.symm
        (fun a : Fin n => ∑ j : Fin n,
          f (sacEntry H a (g.coordinates.symm j)))
    _ = ∑ a : Fin n, ∑ j : Fin n, f (sacEntry H a j) := by
      apply Finset.sum_congr rfl
      intro a _
      exact Equiv.sum_comp g.coordinates.symm
        (fun j : Fin n => f (sacEntry H a j))

/-- The absolute-bias SAC score is invariant under Hamming-isometric conjugacy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7485cdf53c855ccabd410ce7351ea37ed0a77c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
