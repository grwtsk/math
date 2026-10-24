# finiteAnchorLogObservation_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:702bf93c-73f6-0a58-3980-c2b380af48cc",
  "kind": "theorem",
  "lexical_name": "finiteAnchorLogObservation_kernel",
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
  "slug": "finiteanchorlogobservation-kernel--bf13d83e524358f259b8bef2",
  "source": {
    "blob": "fb24e68f70587c052162b9737f72b2db5a844aea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf13d83e524358f259b8bef2b057e833127a2094da6f347a5f2e67665cbd1f2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:702bf93c-73f6-0a58-3980-c2b380af48cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteAnchorLogObservation_kernel {N : ℕ} (f : ℕ → ℝ)
    (hobs : ∀ a ∈ Finset.Icc 1 N, finiteAnchorLogObservation N f (2*a) = 0) :
    ∀ a ∈ Finset.Icc 1 N, f a = 0 := by
  intro a
  induction a using Nat.strong_induction_on with
  | h a ih =>
    intro ha
    have ha' := Finset.mem_Icc.mp ha
    have hd := finiteAnchorLogObservation_diagonal ha'.1 ha'.2 f (fun d hd hda =>
      ih d hda (Finset.mem_Icc.mpr ⟨hd,by omega⟩))
    rw [hobs a ha] at hd
    have hl : Real.log 2 ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
    exact (mul_eq_zero.mp hd.symm).resolve_right hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteAnchorLogObservation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteAnchorLogObservation.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb24e68f70587c052162b9737f72b2db5a844aea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
