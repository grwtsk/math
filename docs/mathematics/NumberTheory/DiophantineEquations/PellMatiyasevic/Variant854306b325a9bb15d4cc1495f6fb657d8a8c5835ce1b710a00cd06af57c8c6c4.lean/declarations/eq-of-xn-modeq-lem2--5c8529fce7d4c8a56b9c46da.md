# eq_of_xn_modEq_lem2

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
      "line": 656,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:480c79c6-93ba-5abc-f3d0-c68a1e5f79ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe48210e-3411-ec5d-f1ff-c42084748408",
  "kind": "theorem",
  "lexical_name": "eq_of_xn_modEq_lem2",
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
  "slug": "eq-of-xn-modeq-lem2--5c8529fce7d4c8a56b9c46da",
  "source": {
    "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 656,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8529fce7d4c8a56b9c46daaf36b3bdeb4f2470699a68b282c6410c7cde0dc9",
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

Occurrence: `result:fe48210e-3411-ec5d-f1ff-c42084748408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_xn_modEq_lem2 {n} (h : 2 * xn a1 n = xn a1 (n + 1)) : a = 2 ∧ n = 0 := by
  rw [xn_succ, mul_comm] at h
  have : n = 0 :=
    n.eq_zero_or_pos.resolve_right fun np =>
      _root_.ne_of_lt
        (lt_of_le_of_lt (Nat.mul_le_mul_left _ a1)
          (Nat.lt_add_of_pos_right <| mul_pos (d_pos a1) (strictMono_y a1 np)))
        h
  cases this; simp at h; exact ⟨h.symm, rfl⟩
#align pell.eq_of_xn_modeq_lem2 Pell.eq_of_xn_modEq_lem2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4135462a62ee33f2f225f440265f0bcc9f261b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
