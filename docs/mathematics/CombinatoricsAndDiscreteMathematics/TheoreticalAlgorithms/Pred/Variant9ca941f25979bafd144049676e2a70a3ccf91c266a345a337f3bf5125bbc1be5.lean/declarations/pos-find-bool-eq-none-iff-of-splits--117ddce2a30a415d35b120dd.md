# Pos.find?_bool_eq_none_iff_of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09b756a9-9797-dfaf-3cfc-12043a104b11",
  "kind": "theorem",
  "lexical_name": "Pos.find?_bool_eq_none_iff_of_splits",
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
  "slug": "pos-find-bool-eq-none-iff-of-splits--117ddce2a30a415d35b120dd",
  "source": {
    "blob": "632682c68f63641c045f045d5136214da6f7e519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:117ddce2a30a415d35b120dd4a8a810eee67d2e548f5cfcc802c718f0b908276",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09b756a9-9797-dfaf-3cfc-12043a104b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.find?_bool_eq_none_iff_of_splits {p : Char → Bool} {s : Slice} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) :
    pos.find? p = none ↔ ∀ c ∈ u.toList, p c = false := by
  rw [Pos.find?_bool_eq_none_iff]
  constructor
  · intro h c hc
    obtain ⟨pos', hle, hne, hget⟩ := hs.mem_toList_right_iff.mp hc
    subst hget; exact h pos' hle hne
  · intro h pos' hle hne
    exact h _ (hs.mem_toList_right_iff.mpr ⟨pos', hle, hne, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `632682c68f63641c045f045d5136214da6f7e519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
