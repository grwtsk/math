# ediv_of_neg_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b32c3463-3524-f960-4270-61e3b55cee1b",
  "kind": "lemma",
  "lexical_name": "ediv_of_neg_of_pos",
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
  "slug": "ediv-of-neg-of-pos--635f5549db90eb3f9ec759c6",
  "source": {
    "blob": "bf242421449fec473d805dcddb1bd0fd08e9b683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:635f5549db90eb3f9ec759c6f782a9bdf342b25f9723241db1a6534d919c8e3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b32c3463-3524-f960-4270-61e3b55cee1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ediv_of_neg_of_pos {a b : ℤ} (Ha : a < 0) (Hb : 0 < b) : ediv a b = -((-a - 1) / b + 1) :=
  match a, b, eq_negSucc_of_lt_zero Ha, eq_succ_of_zero_lt Hb with
  | _, _, ⟨m, rfl⟩, ⟨n, rfl⟩ => by
    rw [show (- -[m+1] : ℤ) = (m + 1 : ℤ) by rfl]; rw [Int.add_sub_cancel]; rfl

/-! ### mod -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf242421449fec473d805dcddb1bd0fd08e9b683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
