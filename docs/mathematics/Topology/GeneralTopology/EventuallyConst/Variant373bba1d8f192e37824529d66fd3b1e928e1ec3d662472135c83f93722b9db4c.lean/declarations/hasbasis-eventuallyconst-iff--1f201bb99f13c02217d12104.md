# HasBasis.eventuallyConst_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb714d73-16aa-4c3c-c368-185ee89bbaec",
  "kind": "theorem",
  "lexical_name": "HasBasis.eventuallyConst_iff'",
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
  "slug": "hasbasis-eventuallyconst-iff--1f201bb99f13c02217d12104",
  "source": {
    "blob": "379daabf94826ab49743c6b148fd50a984e01bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f201bb99f13c02217d12104863a64f6bdf3306a49cf6aad04f2ab3e64496393",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb714d73-16aa-4c3c-c368-185ee89bbaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.eventuallyConst_iff' {ι : Sort*} {p : ι → Prop} {s : ι → Set α}
    {x : ι → α} (h : l.HasBasis p s) (hx : ∀ i, p i → x i ∈ s i) :
    EventuallyConst f l ↔ ∃ i, p i ∧ ∀ y ∈ s i, f y = f (x i) :=
  h.eventuallyConst_iff.trans <| exists_congr fun i ↦ and_congr_right fun hi ↦
    ⟨fun h ↦ (h · · (x i) (hx i hi)), fun h a ha b hb ↦ h a ha ▸ (h b hb).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379daabf94826ab49743c6b148fd50a984e01bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
