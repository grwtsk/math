# ofCardinalInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:998611ae0f1a927a48d4a81324d29fc5083f180b2009b121956fd091a977bda5",
  "kind": "def",
  "lexical_name": "ofCardinalInter",
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
  "slug": "ofcardinalinter--77adbbec82b74f5a9c195214",
  "source": {
    "blob": "cb69e5e111b490788e9d62cd20234038a48e9165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77adbbec82b74f5a9c1952147548dcdc1385545a3bd23201e54680652ad00547",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:998611ae0f1a927a48d4a81324d29fc5083f180b2009b121956fd091a977bda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCardinalInter (l : Set (Set α)) (hc : 2 < c)
    (hl : ∀ S : Set (Set α), (#S < c) → S ⊆ l → ⋂₀ S ∈ l)
    (h_mono : ∀ s t, s ∈ l → s ⊆ t → t ∈ l) : Filter α where
  sets := l
  univ_sets :=
    sInter_empty ▸ hl ∅ (mk_eq_zero (∅ : Set (Set α)) ▸ lt_trans zero_lt_two hc) (empty_subset _)
  sets_of_superset := h_mono _ _
  inter_sets {s t} hs ht := sInter_pair s t ▸ by
    apply hl _ (?_) (insert_subset_iff.2 ⟨hs, singleton_subset_iff.2 ht⟩)
    have : #({s, t} : Set (Set α)) ≤ 2 := by
      calc
      _ ≤ #({t} : Set (Set α)) + 1 := Cardinal.mk_insert_le
      _ = 2 := by norm_num
    exact lt_of_le_of_lt this hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb69e5e111b490788e9d62cd20234038a48e9165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
