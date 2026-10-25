# isPrincipal_opow_omega

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ecc7221-fbd9-302a-1ab0-50dfbaea93f2",
  "kind": "theorem",
  "lexical_name": "isPrincipal_opow_omega",
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
  "slug": "isprincipal-opow-omega--1119b58b3a5dc092fba92f06",
  "source": {
    "blob": "51b43d480793b1d1e10a95c2012c69808c94069e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1119b58b3a5dc092fba92f06e6223cd516f6b11a5502fac7ca5d1f83b0bae6f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ecc7221-fbd9-302a-1ab0-50dfbaea93f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrincipal_opow_omega (o : Ordinal) : IsPrincipal (· ^ ·) (ω_ o) := by
  obtain rfl | ho := eq_zero_or_pos o
  · rw [omega_zero]
    exact isPrincipal_opow_omega0
  · intro a b ha hb
    rw [lt_omega_iff_card_lt] at ha hb ⊢
    apply (card_opow_le a b).trans_lt (max_lt _ (max_lt ha hb))
    rwa [← aleph_zero, aleph_lt_aleph]

@[deprecated (since := "2026-03-18")] alias principal_opow_omega := isPrincipal_opow_omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b43d480793b1d1e10a95c2012c69808c94069e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
