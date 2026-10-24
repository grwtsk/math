# actual_mellin_halfstrip_nonzero_iff_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5299c6-ea9c-71cb-eed7-41e3bbaee14b",
  "kind": "theorem",
  "lexical_name": "actual_mellin_halfstrip_nonzero_iff_quartic",
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
  "slug": "actual-mellin-halfstrip-nonzero-iff-quartic--814e3d38bbf552539ac691a6",
  "source": {
    "blob": "53f157e5b2e7cca3f5647d1f2bc313ca8d67e21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814e3d38bbf552539ac691a6fec1bf2b8a67f9c4d554d54cbcf7c7685df2061a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5299c6-ea9c-71cb-eed7-41e3bbaee14b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_halfstrip_nonzero_iff_quartic {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      quarticBumpLaplace ((A : ℂ)*(s-1/2)) ≠ 0 := by
  have hp : 0 < A := by linarith
  rw [actual_mellin_halfstrip_nonzero_iff_bump hA hl hu,primitiveTransform_eq_quartic hp]
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hp).ne'
  simp [hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f157e5b2e7cca3f5647d1f2bc313ca8d67e21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
