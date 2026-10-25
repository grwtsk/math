# restrictFreeVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7510891108ab4e20daea4601ba6a34c8ee169013b58096215954585c205d4e9",
  "kind": "def",
  "lexical_name": "restrictFreeVar",
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
  "slug": "restrictfreevar--1d1c623a49c5ac8007fb107a",
  "source": {
    "blob": "a9f038486e88b7dbfc123baa8a781a9d5e3e1d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 431,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d1c623a49c5ac8007fb107a230ad6af36fd0a3a28c340db049b42ddaf1e33b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7510891108ab4e20daea4601ba6a34c8ee169013b58096215954585c205d4e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictFreeVar [DecidableEq α] :
    ∀ {n : ℕ} (φ : L.BoundedFormula α n) (_f : φ.freeVarFinset → β), L.BoundedFormula β n
  | _n, falsum, _f => falsum
  | _n, equal t₁ t₂, f =>
    equal (t₁.restrictVarLeft (f ∘ Set.inclusion subset_union_left))
      (t₂.restrictVarLeft (f ∘ Set.inclusion subset_union_right))
  | _n, rel R ts, f =>
    rel R fun i => (ts i).restrictVarLeft (f ∘ Set.inclusion
      (subset_biUnion_of_mem (fun i => Term.varFinsetLeft (ts i)) (mem_univ i)))
  | _n, imp φ₁ φ₂, f =>
    (φ₁.restrictFreeVar (f ∘ Set.inclusion subset_union_left)).imp
      (φ₂.restrictFreeVar (f ∘ Set.inclusion subset_union_right))
  | _n, all φ, f => (φ.restrictFreeVar f).all

/-- Places universal quantifiers on all extra variables of a bounded formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variant33205cf205fea58166711001e941c4b37e893dc9523a7f5a6fa757432bb30f03.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f038486e88b7dbfc123baa8a781a9d5e3e1d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
