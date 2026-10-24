# rhOn_of_pair_enclosures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fd67ee5-5782-77ff-8485-a6ee50239ead",
  "kind": "theorem",
  "lexical_name": "rhOn_of_pair_enclosures",
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
  "slug": "rhon-of-pair-enclosures--fd51f747d87532e374e8a20d",
  "source": {
    "blob": "20cf837eba5b85f03830dc5ff354e1bdefdc5b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd51f747d87532e374e8a20d708fcbdbf7db58f485c56fa05ea2b4ef9d048794",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fd67ee5-5782-77ff-8485-a6ee50239ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhOn_of_pair_enclosures {U : Set ℂ} (P : ℂ → ℂ → ℂ)
    (C : ∀ z, z ∈ U → z.re ≠ 1/2 →
      Pair.Enclosure poleNormalizedZeta (P z) (center z) (offset z))
    (hgap : ∀ z hz hoff,
      (C z hz hoff).valueError^2+‖offset z‖^2*(C z hz hoff).secantError^2 <
        Pair.energy (P z) (center z) (offset z)) : RHOn U := by
  intro z hz hzero
  by_contra hoff
  apply (C z hz hoff).excludes_pair (hgap z hz hoff)
  rw [center_plus_offset,center_minus_offset]
  exact ⟨poleNormalizedZeta_zero_of_target hzero,
    poleNormalizedZeta_zero_of_target hzero.critical_reflection⟩

/-- Classification is obtained for every actual zero before extracting fiber capacity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf837eba5b85f03830dc5ff354e1bdefdc5b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
