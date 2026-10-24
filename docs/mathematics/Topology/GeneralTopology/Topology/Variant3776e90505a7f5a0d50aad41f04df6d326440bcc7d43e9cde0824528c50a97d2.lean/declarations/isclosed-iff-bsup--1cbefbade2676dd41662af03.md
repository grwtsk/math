# isClosed_iff_bsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5abed12-d9b2-7442-dbc1-1ecc4cc3dcaa",
  "kind": "theorem",
  "lexical_name": "isClosed_iff_bsup",
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
  "slug": "isclosed-iff-bsup--1cbefbade2676dd41662af03",
  "source": {
    "blob": "666439a88373d95460d8bb292b600151f66619ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbefbade2676dd41662af03a74d41817949e46bc9e97fc3a320c2469193efcf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5abed12-d9b2-7442-dbc1-1ecc4cc3dcaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_iff_bsup :
    IsClosed s ↔
      ∀ {o : Ordinal}, o ≠ 0 → ∀ f : ∀ a < o, Ordinal,
        (∀ i hi, f i hi ∈ s) → bsup.{u, u} o f ∈ s := by
  rw [isClosed_iff_iSup]
  refine ⟨fun H o ho f hf => H (nonempty_toType_iff.2 ho) _ ?_, fun H ι hι f hf => ?_⟩
  · exact fun i => hf _ _
  · rw [← bsup_eq_iSup]
    apply H (type_ne_zero_iff_nonempty.2 hι)
    exact fun i hi => hf _

@[deprecated isNormal_enum_iff_dirSupClosed (since := "2026-05-25")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant3776e90505a7f5a0d50aad41f04df6d326440bcc7d43e9cde0824528c50a97d2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `666439a88373d95460d8bb292b600151f66619ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
