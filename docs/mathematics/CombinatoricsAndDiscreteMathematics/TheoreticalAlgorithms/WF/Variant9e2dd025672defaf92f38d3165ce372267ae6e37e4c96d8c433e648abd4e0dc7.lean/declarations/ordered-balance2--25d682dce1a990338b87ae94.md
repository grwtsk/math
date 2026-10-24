# Ordered.balance2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:530a37d0-9716-9eff-6960-37bbab83b338",
  "kind": "theorem",
  "lexical_name": "Ordered.balance2",
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
  "slug": "ordered-balance2--25d682dce1a990338b87ae94",
  "source": {
    "blob": "29d21194930e69cf52f5b0da3817339a11f23816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25d682dce1a990338b87ae9432ea31c464cdff99e5db8acbce9ab8baec0d5eb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530a37d0-9716-9eff-6960-37bbab83b338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ordered.balance2 {l : RBNode α} {v : α} {r : RBNode α}
    (lv : l.All (cmpLT cmp · v)) (vr : r.All (cmpLT cmp v ·))
    (hl : l.Ordered cmp) (hr : r.Ordered cmp) : (balance2 l v r).Ordered cmp := by
  unfold balance2; split
  · next b y c z d =>
    have ⟨_, ⟨vy, vb, _⟩, _⟩ := vr; have ⟨⟨yz, _, cz⟩, zd, ⟨by_, yc, hy, hz⟩, hd⟩ := hr
    exact ⟨⟨vy, vy.trans_r lv, by_⟩, ⟨yz, yc, yz.trans_l zd⟩, ⟨lv, vb, hl, hy⟩, cz, zd, hz, hd⟩
  · next a x b y c _ =>
    have ⟨vx, va, _⟩ := vr; have ⟨ax, xy, ha, hy⟩ := hr
    exact ⟨⟨vx, vx.trans_r lv, ax⟩, xy, ⟨lv, va, hl, ha⟩, hy⟩
  · exact ⟨lv, vr, hl, hr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d21194930e69cf52f5b0da3817339a11f23816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
