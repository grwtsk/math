# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Aquaesulian.Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.imo2024q6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5676eff5-a630-730d-ae20-829226dd8505",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Aquaesulian.Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.imo2024q6",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-aquaesulian-variant2b90a--fa18f163d7746538588213fe",
  "source": {
    "blob": "a70d999e5d1b4e4435b12b1ab33f12bfbab55460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant57fdad344763338fe521ed3e142a5e8d1785b069984d342a29677af6b1cec1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa18f163d7746538588213fe39a9914f6686c12eeeb023582637d5affbd50cb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant57fdad344763338fe521ed3e142a5e8d1785b069984d342a29677af6b1cec1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5676eff5-a630-730d-ae20-829226dd8505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Aquaesulian.Variant2b90a242be371177c25fbd2a5ecfb2fcd74cd7e2fca9b1debb2b6e4e2a528f0e.imo2024q6 : (∀ f, Aquaesulian f → #(Set.range (fun x ↦ f x + f (-x))) ≤ (2 : ℕ)) ∧
    ∀ c : ℕ, (∀ f, Aquaesulian f → #(Set.range (fun x ↦ f x + f (-x))) ≤ c) → 2 ≤ c := by
  refine ⟨fun _ ↦ Aquaesulian.card_le_two, fun c h ↦ ?_⟩
  replace h := h fExample aquaesulian_fExample
  rw [card_range_fExample] at h
  exact_mod_cast h

end Imo2024Q6
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant57fdad344763338fe521ed3e142a5e8d1785b069984d342a29677af6b1cec1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant57fdad344763338fe521ed3e142a5e8d1785b069984d342a29677af6b1cec1e9.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70d999e5d1b4e4435b12b1ab33f12bfbab55460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
