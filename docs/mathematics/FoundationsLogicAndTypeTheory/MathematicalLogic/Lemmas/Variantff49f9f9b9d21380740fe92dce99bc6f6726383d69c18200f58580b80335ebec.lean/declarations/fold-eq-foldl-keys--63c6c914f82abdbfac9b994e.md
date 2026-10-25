# fold_eq_foldl_keys

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b637414-697f-d9a3-8112-328ceb2d0c35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c79e9db-96c4-27f6-b9d2-f8f391240a08",
  "kind": "theorem",
  "lexical_name": "fold_eq_foldl_keys",
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
  "slug": "fold-eq-foldl-keys--63c6c914f82abdbfac9b994e",
  "source": {
    "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1463,
    "line": 1460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c6c914f82abdbfac9b994e957442e7d674a5fb3565f64426ade6c107c479b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c79e9db-96c4-27f6-b9d2-f8f391240a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1460–1463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_eq_foldl_keys {f : δ → α → δ} {init : δ} :
    m.fold (fun d a _ => f d a) init = m.keys.foldl f init :=
  Raw₀.fold_eq_foldl_keys ⟨m.1, m.2.size_buckets_pos⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean#L1460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b83eee1db77c29b4370b58f848ec79e7e165a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
