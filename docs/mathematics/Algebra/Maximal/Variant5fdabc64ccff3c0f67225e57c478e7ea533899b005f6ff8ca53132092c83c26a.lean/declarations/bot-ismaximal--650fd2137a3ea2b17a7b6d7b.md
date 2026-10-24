# bot_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9871fee7-4e70-09f6-e1ce-47b8ba3fc376",
  "kind": "theorem",
  "lexical_name": "bot_isMaximal",
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
  "slug": "bot-ismaximal--650fd2137a3ea2b17a7b6d7b",
  "source": {
    "blob": "61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 297,
    "path": "GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:650fd2137a3ea2b17a7b6d7b6cce5fb5595e033fa1752f62239d543c93f84c04",
  "verification": {
    "reference": "docs/verification/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9871fee7-4e70-09f6-e1ce-47b8ba3fc376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bot_isMaximal : IsMaximal (⊥ : Ideal K) :=
  ⟨⟨fun h => absurd ((eq_top_iff_one (⊤ : Ideal K)).mp rfl) (by rw [← h]; simp), fun I hI =>
      or_iff_not_imp_left.mp (eq_bot_or_top I) (ne_of_gt hI)⟩⟩

end Ideal

end DivisionSemiring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variant5fdabc64ccff3c0f67225e57c478e7ea533899b005f6ff8ca53132092c83c26a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61f8b83b2aa0bd2bde236ef781cb3dcc3e6fd1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
