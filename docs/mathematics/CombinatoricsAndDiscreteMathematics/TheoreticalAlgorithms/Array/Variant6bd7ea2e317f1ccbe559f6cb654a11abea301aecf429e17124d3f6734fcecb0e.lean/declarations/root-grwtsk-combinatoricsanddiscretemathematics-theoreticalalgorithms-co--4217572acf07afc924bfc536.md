# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompareLex.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.List.compareLex_eq_compareLex_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a470ab57-9043-de8e-11a2-adea1f9023f7",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompareLex.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.List.compareLex_eq_compareLex_toArray",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-co--4217572acf07afc924bfc536",
  "source": {
    "blob": "c96bc83e7bcc177a15ba92e38d1a3dbff7c7dc35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4217572acf07afc924bfc536ee48370a0b6aede742453d3373d30cd5c35bbf0f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a470ab57-9043-de8e-11a2-adea1f9023f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompareLex.Variant77613bdb661798cbad217cd483d9f9ce172f0855b352ca4c1244dfc0edaddda7.List.compareLex_eq_compareLex_toArray {α} {cmp} {l₁ l₂ : List α} :
    List.compareLex cmp l₁ l₂ = Array.compareLex cmp l₁.toArray l₂.toArray := by
  simp only [Array.compareLex]
  induction l₁ generalizing l₂ with
  | nil =>
    cases l₂
    · simp [Array.compareLex.go, List.compareLex_nil_nil]
    · simp [Array.compareLex.go, List.compareLex_nil_cons]
  | cons x xs ih =>
    cases l₂
    · simp [Array.compareLex.go, List.compareLex_cons_nil]
    · rw [Array.compareLex.go, List.compareLex_cons_cons]
      simp only [List.size_toArray, List.length_cons, Nat.le_zero_eq, Nat.add_one_ne_zero,
        ↓reduceDIte, List.getElem_toArray, List.getElem_cons_zero, Nat.zero_add]
      split <;> simp_all [compareLex.go_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant6bd7ea2e317f1ccbe559f6cb654a11abea301aecf429e17124d3f6734fcecb0e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c96bc83e7bcc177a15ba92e38d1a3dbff7c7dc35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
