# smul_set_subset_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ebc157-36b2-5183-a8eb-580c15c9cd10",
  "kind": "lemma",
  "lexical_name": "smul_set_subset_iff₀",
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
  "slug": "smul-set-subset-iff--9b551645ae3039ff67b8bf4d",
  "source": {
    "blob": "9b6cefe156ceabc4aa4b35fe3966d4968a5d9364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 185,
    "path": "GRWTSK/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b551645ae3039ff67b8bf4d30e8a64135648a360a5adbc187de47e89abf8958",
  "verification": {
    "reference": "docs/verification/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ebc157-36b2-5183-a8eb-580c15c9cd10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_set_subset_iff₀ (ha : a ≠ 0) {A B : Set β} : a • A ⊆ B ↔ A ⊆ a⁻¹ • B :=
  show Units.mk0 a ha • _ ⊆ _ ↔ _ from smul_set_subset_iff_subset_inv_smul_set

@[deprecated (since := "2024-12-28")] alias set_smul_subset_iff₀ := smul_set_subset_iff₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Set/Variant095b3d16503c7a955eca59838057607462318685c292cacd120bef95f3155a1a.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b6cefe156ceabc4aa4b35fe3966d4968a5d9364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
