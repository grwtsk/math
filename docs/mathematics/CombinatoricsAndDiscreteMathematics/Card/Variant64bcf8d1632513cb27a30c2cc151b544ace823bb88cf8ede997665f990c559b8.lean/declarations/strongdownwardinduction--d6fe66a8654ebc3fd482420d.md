# strongDownwardInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bda213fe05c420f96d9b49e88b672d308e04d8988d59c2a8a2fed31b5101fb9",
  "kind": "def",
  "lexical_name": "strongDownwardInduction",
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
  "slug": "strongdownwardinduction--d6fe66a8654ebc3fd482420d",
  "source": {
    "blob": "493d7c6c08ecb7577d201d3318dbb075bb30f04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 911,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6fe66a8654ebc3fd482420d5e6c5fcff486ed4eb85ce4e5ec17454be8048701",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bda213fe05c420f96d9b49e88b672d308e04d8988d59c2a8a2fed31b5101fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 911–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def strongDownwardInduction {p : Finset α → Sort*} {n : ℕ}
    (H : ∀ t₁, (∀ {t₂ : Finset α}, #t₂ ≤ n → t₁ ⊂ t₂ → p t₂) → #t₁ ≤ n → p t₁) :
    ∀ s : Finset α, #s ≤ n → p s
  | s =>
    H s fun {t} ht h =>
      have := Finset.card_lt_card h
      have : n - #t < n - #s := by lia
      strongDownwardInduction H t ht
  termination_by s => n - #s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean#L911).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493d7c6c08ecb7577d201d3318dbb075bb30f04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
