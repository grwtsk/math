# zeta_limit_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42c5739c-4a00-41e4-b71a-fee499bbb639",
  "kind": "lemma",
  "lexical_name": "zeta_limit_aux1",
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
  "slug": "zeta-limit-aux1--d833122122ca2de1d3f98784",
  "source": {
    "blob": "3b456c48485cd8f735dcbcc8ff1141530d916945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 241,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d833122122ca2de1d3f987842de17cb13fa135f4d114250831f3f7aa18f040e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42c5739c-4a00-41e4-b71a-fee499bbb639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zeta_limit_aux1 {s : ℝ} (hs : 1 < s) :
    (∑' n : ℕ, 1 / (n + 1 : ℝ) ^ s) - 1 / (s - 1) = 1 - s * term_tsum s := by
  rw [term_tsum_of_lt hs]
  generalize (∑' n : ℕ, 1 / (n + 1 : ℝ) ^ s) = Z
  field_simp [(show s - 1 ≠ 0 by linarith)]
  ring_nf

end s_gt_one

section continuity

/-!
## Continuity of the sum
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b456c48485cd8f735dcbcc8ff1141530d916945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
