# inertiaEquiv_symm_apply_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:592a5a31-ac4c-0ac5-a501-fd85f74af952",
  "kind": "theorem",
  "lexical_name": "inertiaEquiv_symm_apply_smul",
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
  "slug": "inertiaequiv-symm-apply-smul--69732c9738335dd349fe6330",
  "source": {
    "blob": "1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69732c9738335dd349fe63303e1a7cc7bb00ea6810d16f3bc04d2fc392c9b2fb",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:592a5a31-ac4c-0ac5-a501-fd85f74af952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaEquiv_symm_apply_smul {R : Type*} [Ring R] [MulSemiringAction M R]
    [MulSemiringAction N R] (I : Ideal R) (e : M ≃* N) (he : ∀ (m : M) (x : R), (e m) • x = m • x)
    (n : inertia N I) (x : R) :
    (inertiaEquiv I e he).symm n • x = n • x := by
  rw [← (inertiaEquiv I e he).apply_symm_apply n, inertiaEquiv_apply_smul,
    (inertiaEquiv I e he).apply_symm_apply]

/-! TODO: add `equivSMul` like we have for subgroup. -/

end Group

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
