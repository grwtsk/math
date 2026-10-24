# divides_sq_eq_zero_z

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1318b70a-ebed-4900-b46f-667a8c68a85f",
  "kind": "theorem",
  "lexical_name": "divides_sq_eq_zero_z",
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
  "slug": "divides-sq-eq-zero-z--c33561d6d89129ea8ba61b6c",
  "source": {
    "blob": "40b0d697ad536217bb26713595e598d5a79ed840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 756,
    "path": "GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33561d6d89129ea8ba61b6cbe4ebf9360713b414e4fc09ea09129a783049dcb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1318b70a-ebed-4900-b46f-667a8c68a85f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divides_sq_eq_zero_z {x y : ℤ} (h : x * x = d * y * y) : x = 0 ∧ y = 0 := by
  rw [mul_assoc, ← Int.natAbs_mul_self, ← Int.natAbs_mul_self, ← Int.natCast_mul, ← mul_assoc] at h
  exact
    let ⟨h1, h2⟩ := divides_sq_eq_zero (Int.ofNat.inj h)
    ⟨Int.natAbs_eq_zero.mp h1, Int.natAbs_eq_zero.mp h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc4eba2ceda5dbedb2b60f36b8a88e39c810e6cc6e1d10eb12ab84695c4b8bcab.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b0d697ad536217bb26713595e598d5a79ed840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
