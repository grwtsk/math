# finite_finsupp_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22e735eb-8b62-af80-6c04-10720ef55711",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80a0e574-80cc-431c-c87a-84a6c6397a08",
  "kind": "lemma",
  "lexical_name": "finite_finsupp_self_iff",
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
  "slug": "finite-finsupp-self-iff--911726c2bf5e18261a167b2f",
  "source": {
    "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 551,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911726c2bf5e18261a167b2f36874ad46ad8ea1762e47c79128415b5b6931247",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a0e574-80cc-431c-c87a-84a6c6397a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_finsupp_self_iff : Module.Finite R (ι →₀ R) ↔ Subsingleton R ∨ Finite ι := by
  simp only [finite_finsupp_iff, Finite.self, true_and, or_iff_right_iff_imp]
  exact fun _ ↦ .inr inferInstance

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95945b016c4ab559c482b5ab8632e4fa9e8d17ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
