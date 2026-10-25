# decreasingInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14dcb60539b1d85fb296ad2295dc2b52f7211ae73da761b055038a5461c40417",
  "kind": "def",
  "lexical_name": "decreasingInduction",
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
  "slug": "decreasinginduction--79605fa8e35aea97205a4081",
  "source": {
    "blob": "31d436f8c166c4b0251486a09f3faa202f4b2396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79605fa8e35aea97205a4081945b34fbdca6d4a161f49f4850871ab2e0e24039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14dcb60539b1d85fb296ad2295dc2b52f7211ae73da761b055038a5461c40417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decreasingInduction {n} {motive : (m : ℕ) → m ≤ n → Sort*}
    (of_succ : ∀ k (h : k < n), motive (k + 1) h → motive k (le_of_succ_le h))
    (self : motive n (Nat.le_refl _)) {m} (mn : m ≤ n) : motive m mn := by
  induction mn using leRec with
  | refl => exact self
  | @le_succ_of_le k _ ih =>
    apply ih (fun i hi => of_succ i (le_succ_of_le hi)) (of_succ k (lt_succ_self _) self)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantd9571e767b17d2b1f6fc36f9eccaa57eb678c3d5b9d13da5215fc8dfc9444437.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d436f8c166c4b0251486a09f3faa202f4b2396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
