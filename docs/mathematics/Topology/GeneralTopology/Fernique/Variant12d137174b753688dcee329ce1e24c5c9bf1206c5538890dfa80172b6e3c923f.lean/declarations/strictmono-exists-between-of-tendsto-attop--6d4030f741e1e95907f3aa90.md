# StrictMono.exists_between_of_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31a85780a3f310d0c3713db48b94cc23ec76185c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8f5e51c-f45c-ef82-2fa1-3c0cff5bc7b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ace2014-e958-9d96-d149-eb1a3ecff572",
  "kind": "lemma",
  "lexical_name": "StrictMono.exists_between_of_tendsto_atTop",
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
  "slug": "strictmono-exists-between-of-tendsto-attop--6d4030f741e1e95907f3aa90",
  "source": {
    "blob": "31a85780a3f310d0c3713db48b94cc23ec76185c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d4030f741e1e95907f3aa9022092b7b2695938b88b48431ee60a6ebd00492b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ace2014-e958-9d96-d149-eb1a3ecff572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StrictMono.exists_between_of_tendsto_atTop {β : Type*} [LinearOrder β] {t : ℕ → β}
    (ht_mono : StrictMono t) (ht_tendsto : Tendsto t atTop atTop) {x : β} (hx : t 0 < x) :
    ∃ n, t n < x ∧ x ≤ t (n + 1) := by
  have h : ∃ n, x ≤ t n := by
    simp only [tendsto_atTop_atTop_iff_of_monotone ht_mono.monotone] at ht_tendsto
    exact ht_tendsto x
  have h' m := Nat.find_min h (m := m)
  simp only [not_le] at h'
  exact ⟨Nat.find h - 1, h' _ (by simp [hx]), by simp [Nat.find_spec h, hx]⟩

end Aux

namespace ProbabilityTheory

variable {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E]

/-- The rotation in `E × E` with angle `θ`, as a continuous linear map. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Variant12d137174b753688dcee329ce1e24c5c9bf1206c5538890dfa80172b6e3c923f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a85780a3f310d0c3713db48b94cc23ec76185c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
