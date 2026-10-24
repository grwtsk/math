# unique_of_count_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:845b5ef8-0a7f-36d8-47a7-a6e36bdca8e0",
  "kind": "theorem",
  "lexical_name": "unique_of_count_le_one",
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
  "slug": "unique-of-count-le-one--964c57064e011f55f5502111",
  "source": {
    "blob": "e3b6d30ef143df89911644364df10c075b7387e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:964c57064e011f55f55021119a5f2583b932603bc8d5f90aa52b94eb6b970307",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:845b5ef8-0a7f-36d8-47a7-a6e36bdca8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_of_count_le_one {T : ℝ} (hcount : count T ≤ 1)
    {z w : ZeroPoint} (hz : z ∈ head T) (hw : w ∈ head T) : w = z := by
  classical
  by_contra hne
  have hsub : ({w, z} : Finset ZeroPoint) ⊆ head T := by
    intro q hq
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl
    · exact hw
    · exact hz
  have hcard : 2 ≤ (head T).card := by
    calc
      2 = ({w, z} : Finset ZeroPoint).card := by simp [hne]
      _ ≤ _ := Finset.card_le_card hsub
  have hmass := card_le_count T
  omega

/-- The complete canonical count is NOT supplied. This theorem consumes a
regional upper mass <=1 and the old actual isolated point; it covers all signs
and all horizontal coordinates at the closed height fifteen by exact symmetries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b6d30ef143df89911644364df10c075b7387e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
