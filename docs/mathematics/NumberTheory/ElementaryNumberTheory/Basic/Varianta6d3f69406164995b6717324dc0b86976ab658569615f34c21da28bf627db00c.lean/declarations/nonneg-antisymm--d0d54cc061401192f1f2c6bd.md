# nonneg_antisymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "725d07b13ea0dd81a443aa1eb1a0bd34e8153bf9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 927,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc3072fd-e613-a1e7-0a74-212ae2f16ce6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00151ccd-779d-f2b9-fce2-ff86a466ca2a",
  "kind": "theorem",
  "lexical_name": "nonneg_antisymm",
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
  "slug": "nonneg-antisymm--d0d54cc061401192f1f2c6bd",
  "source": {
    "blob": "725d07b13ea0dd81a443aa1eb1a0bd34e8153bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 927,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d54cc061401192f1f2c6bdff68fb48bafc7e48c9f230d7018fae1b6152fe9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00151ccd-779d-f2b9-fce2-ff86a466ca2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 927–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonneg_antisymm : ∀ {a : ℤ√d}, Nonneg a → Nonneg (-a) → a = 0
  | ⟨0, 0⟩, _, _ => rfl
  | ⟨-[x+1], -[y+1]⟩, xy, _ => False.elim xy
  | ⟨(x + 1 : Nat), (y + 1 : Nat)⟩, _, yx => False.elim yx
  | ⟨-[x+1], 0⟩, xy, _ => absurd xy (not_sqLe_succ _ _ _ (by decide))
  | ⟨(x + 1 : Nat), 0⟩, _, yx => absurd yx (not_sqLe_succ _ _ _ (by decide))
  | ⟨0, -[y+1]⟩, xy, _ => absurd xy (not_sqLe_succ _ _ _ d_pos)
  | ⟨0, (y + 1 : Nat)⟩, _, yx => absurd yx (not_sqLe_succ _ _ _ d_pos)
  | ⟨(x + 1 : Nat), -[y+1]⟩, (xy : SqLe _ _ _ _), (yx : SqLe _ _ _ _) => by
    let t := le_antisymm yx xy
    rw [one_mul] at t
    exact absurd t (not_divides_sq _ _)
  | ⟨-[x+1], (y + 1 : Nat)⟩, (xy : SqLe _ _ _ _), (yx : SqLe _ _ _ _) => by
    let t := le_antisymm xy yx
    rw [one_mul] at t
    exact absurd t (not_divides_sq _ _)
#align zsqrtd.nonneg_antisymm Zsqrtd.nonneg_antisymm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Varianta6d3f69406164995b6717324dc0b86976ab658569615f34c21da28bf627db00c.lean#L927).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725d07b13ea0dd81a443aa1eb1a0bd34e8153bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
