# cycleGraph_EulerianCircuit_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:029dbdf4d5289e5d237b411f5e3d0bd3f9dd2ee69fc7979c2aab6ff12ba990b1",
  "kind": "def",
  "lexical_name": "cycleGraph_EulerianCircuit_cons",
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
  "slug": "cyclegraph-euleriancircuit-cons--75303fa9838e045ee0d4ee04",
  "source": {
    "blob": "de168cfa7698245b08470ade7013b9b2e05a699e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75303fa9838e045ee0d4ee043f19c8b2d81746408935f289562f1e7b50ccb837",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:029dbdf4d5289e5d237b411f5e3d0bd3f9dd2ee69fc7979c2aab6ff12ba990b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def cycleGraph_EulerianCircuit_cons (n : ℕ) :
    ∀ m : Fin (n + 3), (cycleGraph (n + 3)).Walk m 0
  | ⟨0, h⟩ => Walk.nil
  | ⟨m + 1, h⟩ =>
    have hadj : (cycleGraph (n + 3)).Adj ⟨m + 1, h⟩ ⟨m, Nat.lt_of_succ_lt h⟩ := by
      simp [cycleGraph_adj, Fin.ext_iff, Fin.sub_val_of_le]
    Walk.cons hadj (cycleGraph_EulerianCircuit_cons n ⟨m, Nat.lt_of_succ_lt h⟩)

/-- Eulerian trail of `cycleGraph (n + 3)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de168cfa7698245b08470ade7013b9b2e05a699e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
