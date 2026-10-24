# discr_ne_zero_iff_roots_nodup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe03328d-bfb5-7e31-be65-78c7152e0394",
  "kind": "theorem",
  "lexical_name": "discr_ne_zero_iff_roots_nodup",
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
  "slug": "discr-ne-zero-iff-roots-nodup--ad53509b79ed9e865f23ef24",
  "source": {
    "blob": "bbb58de6e39d85c5c0ab0f9c956c95a5466a9c1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 485,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant447d4720dc52ec3991824ed23ab8a5b3cb61911cf0f0933fa61a23cb7ca6365d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad53509b79ed9e865f23ef2422efec8c63ef578ffe78d7294ef90ade697d36c8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant447d4720dc52ec3991824ed23ab8a5b3cb61911cf0f0933fa61a23cb7ca6365d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe03328d-bfb5-7e31-be65-78c7152e0394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_ne_zero_iff_roots_nodup (ha : P.a ≠ 0) (hP : (P.toPoly.map φ).Splits) :
    P.discr ≠ 0 ↔ (map φ P).roots.Nodup := by
  have ⟨x, y, z, h3⟩ := (splits_iff_roots_eq_three ha).mp hP
  rw [discr_ne_zero_iff_roots_ne ha h3, h3]
  change _ ↔ (x ::ₘ y ::ₘ {z}).Nodup
  rw [nodup_cons, nodup_cons, mem_cons, mem_singleton, mem_singleton]
  simp only [nodup_singleton]
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant447d4720dc52ec3991824ed23ab8a5b3cb61911cf0f0933fa61a23cb7ca6365d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant447d4720dc52ec3991824ed23ab8a5b3cb61911cf0f0933fa61a23cb7ca6365d.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbb58de6e39d85c5c0ab0f9c956c95a5466a9c1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
