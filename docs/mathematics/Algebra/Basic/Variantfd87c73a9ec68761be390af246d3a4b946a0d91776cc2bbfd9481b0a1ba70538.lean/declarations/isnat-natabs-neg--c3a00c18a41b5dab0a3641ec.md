# isNat_natAbs_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f350307a-b00a-02bc-4bda-3d88495d2570",
  "kind": "theorem",
  "lexical_name": "isNat_natAbs_neg",
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
  "slug": "isnat-natabs-neg--c3a00c18a41b5dab0a3641ec",
  "source": {
    "blob": "7536d6a75dcc19c666c709cbd6af53b6a95e678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 95,
    "path": "GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a00c18a41b5dab0a3641ec46df3a6f7edab62342b76d902dba8fea5998bb68",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f350307a-b00a-02bc-4bda-3d88495d2570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_natAbs_neg : {n : ℤ} → {a : ℕ} → IsInt n (.negOfNat a) → IsNat n.natAbs a
  | _, _, ⟨rfl⟩ => ⟨by simp⟩

/-- The `norm_num` extension which identifies the expression `Int.natAbs n` such that
`norm_num` successfully recognizes `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7536d6a75dcc19c666c709cbd6af53b6a95e678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
