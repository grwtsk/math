# suffixLevenshtein_cons_cons_fst_get_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:678c33ae-633a-b861-7a6e-d24975aa3096",
  "kind": "theorem",
  "lexical_name": "suffixLevenshtein_cons_cons_fst_get_zero",
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
  "slug": "suffixlevenshtein-cons-cons-fst-get-zero--f28a2153c46608f4b93d4174",
  "source": {
    "blob": "cbb425ac1965e843e335e8215737b18e0f4ef8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 234,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant055024a674e8a3c6fa6693f44729bc63b63c778125aa32457d1a24c1132c3cbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28a2153c46608f4b93d41746ef40c696868720ebf8117fff0e6d92f69a4ac1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant055024a674e8a3c6fa6693f44729bc63b63c778125aa32457d1a24c1132c3cbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:678c33ae-633a-b861-7a6e-d24975aa3096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem suffixLevenshtein_cons_cons_fst_get_zero
    (x : α) (xs y ys) (w) :
    (suffixLevenshtein C (x :: xs) (y :: ys)).1[0] =
      let ⟨dx, _⟩ := suffixLevenshtein C xs (y :: ys)
      let ⟨dy, _⟩ := suffixLevenshtein C (x :: xs) ys
      let ⟨dxy, _⟩ := suffixLevenshtein C xs ys
      min
        (C.delete x + dx[0])
        (min
          (C.insert y + dy[0])
          (C.substitute x y + dxy[0])) := by
  conv =>
    lhs
    dsimp only [suffixLevenshtein_cons₂]
  simp only [suffixLevenshtein_cons₁]
  rw [impl_cons_fst_zero]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant055024a674e8a3c6fa6693f44729bc63b63c778125aa32457d1a24c1132c3cbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant055024a674e8a3c6fa6693f44729bc63b63c778125aa32457d1a24c1132c3cbe.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb425ac1965e843e335e8215737b18e0f4ef8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
