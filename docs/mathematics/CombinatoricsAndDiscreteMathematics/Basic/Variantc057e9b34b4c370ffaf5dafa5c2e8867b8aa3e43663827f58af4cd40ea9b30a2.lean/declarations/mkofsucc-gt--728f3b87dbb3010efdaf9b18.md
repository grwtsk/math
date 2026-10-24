# mkOfSucc_δ_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d8f716-e867-b59b-3ed2-229d981109a1",
  "kind": "lemma",
  "lexical_name": "mkOfSucc_δ_gt",
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
  "slug": "mkofsucc-gt--728f3b87dbb3010efdaf9b18",
  "source": {
    "blob": "9695e8ba4db4888fdec809c19c4a3fabfd8273d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 457,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728f3b87dbb3010efdaf9b18ff98f5e9c02029c377b12b69a02727569fb9075b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d8f716-e867-b59b-3ed2-229d981109a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mkOfSucc_δ_gt {n : ℕ} {i : Fin n} {j : Fin (n + 2)}
    (h : j < i.succ.castSucc) :
    mkOfSucc i ≫ δ j = mkOfSucc i.succ := by
  ext x
  simp only [δ, len_mk, mkHom, comp_toOrderHom, Hom.toOrderHom_mk, OrderHom.comp_coe,
    OrderEmbedding.toOrderHom_coe, Function.comp_apply, Fin.succAboveOrderEmb_apply]
  fin_cases x <;> rw [Fin.succAbove_of_le_castSucc]
  · rfl
  · exact Nat.le_of_lt_succ h
  · rfl
  · exact Nat.le_of_lt h

/-- If `i + 1 = j`, `mkOfSucc i ≫ δ j` is the morphism `⦋1⦌ ⟶ ⦋n⦌` that
sends `0` and `1` to `i` and `i + 2`, respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc057e9b34b4c370ffaf5dafa5c2e8867b8aa3e43663827f58af4cd40ea9b30a2.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9695e8ba4db4888fdec809c19c4a3fabfd8273d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
