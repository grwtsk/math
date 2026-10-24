# abs_sub_addNSMul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d3bf496-753d-970b-56a2-8e9148bf41f5",
  "kind": "lemma",
  "lexical_name": "abs_sub_addNSMul_le",
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
  "slug": "abs-sub-addnsmul-le--6ae3836356f8f8dcd36a19ae",
  "source": {
    "blob": "7f6a2145937f3c74fcb5a2bf9ad699da5b498865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae3836356f8f8dcd36a19aed151f765f7b719f4e1d014a985079cc64c11cb41",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d3bf496-753d-970b-56a2-8e9148bf41f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_sub_addNSMul_le (hδ : 0 ≤ δ) {t : Icc a b} (n : ℕ)
    (ht : t ∈ Icc (addNSMul h δ n) (addNSMul h δ (n+1))) :
    (|t - addNSMul h δ n| : α) ≤ δ :=
  calc
    (|t - addNSMul h δ n| : α) = t - addNSMul h δ n            := abs_eq_self.2 <| sub_nonneg.2 ht.1
    _ ≤ projIcc a b h (a + (n+1) • δ) - addNSMul h δ n := by apply sub_le_sub_right; exact ht.2
    _ ≤ (|projIcc a b h (a + (n+1) • δ) - addNSMul h δ n| : α) := le_abs_self _
    _ ≤ |a + (n+1) • δ - (a + n • δ)|                          := abs_projIcc_sub_projIcc h
    _ ≤ δ := by
          rw [add_sub_add_comm, sub_self, zero_add, succ_nsmul', add_sub_cancel_right]
          exact (abs_eq_self.mpr hδ).le

end Set.Icc

open scoped unitInterval

/-- Any open cover `c` of a closed interval `[a, b]` in ℝ
can be refined to a finite partition into subintervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitInterval/Variant50efd5509923d4807cf2ee3f5549f13e1221f625257e68de8bf280e1274aaf5e.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f6a2145937f3c74fcb5a2bf9ad699da5b498865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
