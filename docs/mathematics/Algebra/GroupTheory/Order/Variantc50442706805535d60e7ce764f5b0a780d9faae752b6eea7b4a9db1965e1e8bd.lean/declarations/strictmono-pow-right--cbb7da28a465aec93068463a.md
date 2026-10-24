# StrictMono.pow_right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e89a43d86faf61070226d631b11096c6c26e117f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19291783-f8bd-1799-5e99-bc66b3ae9211",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17e67b3e-b66b-bc06-c74b-ce776a03fedc",
  "kind": "theorem",
  "lexical_name": "StrictMono.pow_right'",
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
  "slug": "strictmono-pow-right--cbb7da28a465aec93068463a",
  "source": {
    "blob": "e89a43d86faf61070226d631b11096c6c26e117f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 161,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb7da28a465aec93068463a274e23f1b60a2390f1f9e7924313c925e71b3dec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e67b3e-b66b-bc06-c74b-ce776a03fedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictMono.pow_right' (hf : StrictMono f) : ∀ {n : ℕ}, n ≠ 0 → StrictMono fun a => f a ^ n
  | 0, hn => (hn rfl).elim
  | 1, _ => by simpa
  | Nat.succ <| Nat.succ n, _ => by
    simp_rw [pow_succ _ (n + 1)]
    exact hf.mul' (StrictMono.pow_right' hf n.succ_ne_zero)
#align strict_mono.pow_right' StrictMono.pow_right'
#align strict_mono.nsmul_left StrictMono.nsmul_left

/-- See also `pow_strictMono_right` -/
@[to_additive nsmul_strictMono_left]  -- Porting note: nolint to_additive_doc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variantc50442706805535d60e7ce764f5b0a780d9faae752b6eea7b4a9db1965e1e8bd.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e89a43d86faf61070226d631b11096c6c26e117f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
