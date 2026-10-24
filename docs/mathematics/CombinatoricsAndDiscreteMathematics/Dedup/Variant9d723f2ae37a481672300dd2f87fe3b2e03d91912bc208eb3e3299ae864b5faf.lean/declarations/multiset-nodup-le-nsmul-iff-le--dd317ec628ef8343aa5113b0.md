# Multiset.Nodup.le_nsmul_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:050a5840-5d87-102f-af96-e4df99fd45db",
  "kind": "theorem",
  "lexical_name": "Multiset.Nodup.le_nsmul_iff_le",
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
  "slug": "multiset-nodup-le-nsmul-iff-le--dd317ec628ef8343aa5113b0",
  "source": {
    "blob": "577c78e0be6c9e3879579571ab42a3039b840ba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd317ec628ef8343aa5113b0afb5463f959ff3e09c68e5e5c837d2be8b9b9160",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:050a5840-5d87-102f-af96-e4df99fd45db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multiset.Nodup.le_nsmul_iff_le {α : Type*} {s t : Multiset α} {n : ℕ} (h : s.Nodup)
    (hn : n ≠ 0) : s ≤ n • t ↔ s ≤ t := by
  classical
    rw [← h.le_dedup_iff_le, Iff.comm, ← h.le_dedup_iff_le]
    simp [hn]
#align multiset.nodup.le_nsmul_iff_le Multiset.Nodup.le_nsmul_iff_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant9d723f2ae37a481672300dd2f87fe3b2e03d91912bc208eb3e3299ae864b5faf.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `577c78e0be6c9e3879579571ab42a3039b840ba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
