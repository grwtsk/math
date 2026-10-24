# F5Elements_exhaustive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "379fa43ce3249b225da568f0d33e2cea10b77e71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07e5abb4-55f5-38d0-31f0-baa860e7e361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90cb0e0c-45a3-da9c-e83c-7ba59ec42443",
  "kind": "theorem",
  "lexical_name": "F5Elements_exhaustive",
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
  "slug": "f5elements-exhaustive--074992f4441bfde00854bd61",
  "source": {
    "blob": "379fa43ce3249b225da568f0d33e2cea10b77e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:074992f4441bfde00854bd61031b82f0270919ca578f7ab72410eaa99e881f0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90cb0e0c-45a3-da9c-e83c-7ba59ec42443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem F5Elements_exhaustive : ∀ x : Fin 5, x ∈ F5Elements := by
  intro x
  cases x with
  | mk val isLt =>
    have h :
        val = 0 ∨ val = 1 ∨ val = 2 ∨ val = 3 ∨ val = 4 := by
      omega
    cases h with
    | inl h0 =>
        subst val
        simp [F5Elements]
    | inr hrest =>
        cases hrest with
        | inl h1 =>
            subst val
            simp [F5Elements]
        | inr hrest2 =>
            cases hrest2 with
            | inl h2 =>
                subst val
                simp [F5Elements]
            | inr hrest3 =>
                cases hrest3 with
                | inl h3 =>
                    subst val
                    simp [F5Elements]
                | inr h4 =>
                    subst val
                    simp [F5Elements]

/-- The two-element residue field with explicit enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteField/Variant3ad489a0ee7324fc20d3a23e4c26aedec9ed2d5c9cfd69f4039e5d565e674c08.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379fa43ce3249b225da568f0d33e2cea10b77e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
