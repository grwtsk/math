# strictMono_y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d08ae7e8-467c-5038-c859-4f2c5d09204e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8904bfe1-1ead-491f-b15b-63cd9feadb57",
  "kind": "theorem",
  "lexical_name": "strictMono_y",
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
  "slug": "strictmono-y--715515e962bbb4c55a5d8b5e",
  "source": {
    "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 401,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:715515e962bbb4c55a5d8b5ebcb5d9755cbd21b8cda842074e6ecc6f73db2973",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8904bfe1-1ead-491f-b15b-63cd9feadb57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictMono_y : StrictMono (yn a1)
  | m, 0, h => absurd h <| Nat.not_lt_zero _
  | m, n + 1, h => by
    have : yn a1 m ≤ yn a1 n :=
      Or.elim (lt_or_eq_of_le <| Nat.le_of_succ_le_succ h) (fun hl => le_of_lt <| strictMono_y hl)
        fun e => by rw [e]
    simp; refine' lt_of_le_of_lt _ (Nat.lt_add_of_pos_left <| x_pos a1 n)
    rw [← mul_one (yn a1 m)]
    exact mul_le_mul this (le_of_lt a1) (Nat.zero_le _) (Nat.zero_le _)
#align pell.strict_mono_y Pell.strictMono_y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4135462a62ee33f2f225f440265f0bcc9f261b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
