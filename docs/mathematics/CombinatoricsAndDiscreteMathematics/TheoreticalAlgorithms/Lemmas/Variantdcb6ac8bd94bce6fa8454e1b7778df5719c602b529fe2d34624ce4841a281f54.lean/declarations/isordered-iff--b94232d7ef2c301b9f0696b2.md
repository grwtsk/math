# isOrdered_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0856eabeaf7d36dcaac55a966297f94c80b1f2cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ddbf7cb-1c46-5fa9-f774-1787abecf450",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3029cc71-b482-fb2d-e1e5-e2d7acdb04c8",
  "kind": "theorem",
  "lexical_name": "isOrdered_iff'",
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
  "slug": "isordered-iff--b94232d7ef2c301b9f0696b2",
  "source": {
    "blob": "0856eabeaf7d36dcaac55a966297f94c80b1f2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94232d7ef2c301b9f0696b2b39186453d0deae2166b85194b6ecef9822fa07f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3029cc71-b482-fb2d-e1e5-e2d7acdb04c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOrdered_iff' [@TransCmp α cmp] {t : RBNode α} :
    isOrdered cmp t L R ↔
    (∀ a ∈ L, t.All (cmpLT cmp a ·)) ∧
    (∀ a ∈ R, t.All (cmpLT cmp · a)) ∧
    (∀ a ∈ L, ∀ b ∈ R, cmpLT cmp a b) ∧
    Ordered cmp t := by
  induction t generalizing L R with
  | nil =>
    simp [isOrdered]; split <;> simp [cmpLT_iff]
    next h => intro _ ha _ hb; cases h _ _ ha hb
  | node _ l v r =>
    simp [isOrdered, *]
    exact ⟨
      fun ⟨⟨Ll, lv, Lv, ol⟩, ⟨vr, rR, vR, or⟩⟩ => ⟨
        fun _ h => ⟨Lv _ h, Ll _ h, (Lv _ h).trans_l vr⟩,
        fun _ h => ⟨vR _ h, (vR _ h).trans_r lv, rR _ h⟩,
        fun _ hL _ hR => (Lv _ hL).trans (vR _ hR),
        lv, vr, ol, or⟩,
      fun ⟨hL, hR, _, lv, vr, ol, or⟩ => ⟨
        ⟨fun _ h => (hL _ h).2.1, lv, fun _ h => (hL _ h).1, ol⟩,
        ⟨vr, fun _ h => (hR _ h).2.2, fun _ h => (hR _ h).1, or⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdcb6ac8bd94bce6fa8454e1b7778df5719c602b529fe2d34624ce4841a281f54.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0856eabeaf7d36dcaac55a966297f94c80b1f2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
