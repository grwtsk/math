# ringKrullDim_le_iff_isMaximal_height_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9194d8ea-d63a-41ea-0cf5-c27667aa5e7d",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_le_iff_isMaximal_height_le",
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
  "slug": "ringkrulldim-le-iff-ismaximal-height-le--e03958cceff8ede50ce88e49",
  "source": {
    "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 399,
    "path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03958cceff8ede50ce88e49e6cbf495839957287a28cdd8b6179dfce49102a4",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9194d8ea-d63a-41ea-0cf5-c27667aa5e7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_le_iff_isMaximal_height_le {R : Type*} [CommRing R] (n : WithBot ℕ∞) :
    ringKrullDim R ≤ n ↔ ∀ ⦃m : Ideal R⦄, m.IsMaximal → m.height ≤ n := by
  rw [ringKrullDim_le_iff_height_le]
  refine ⟨fun h m hm ↦ h hm.isPrime, fun h p hp ↦ ?_⟩
  obtain ⟨m, hm, hle⟩ := p.exists_le_maximal hp.ne_top
  refine le_trans ?_ (h hm)
  norm_cast
  exact Ideal.height_mono hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
