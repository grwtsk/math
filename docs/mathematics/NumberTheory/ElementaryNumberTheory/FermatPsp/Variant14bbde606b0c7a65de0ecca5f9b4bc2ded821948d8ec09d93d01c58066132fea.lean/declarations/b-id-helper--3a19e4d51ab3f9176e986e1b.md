# b_id_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ef7cb0-997c-8800-7de8-f042a050c3e8",
  "kind": "theorem",
  "lexical_name": "b_id_helper",
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
  "slug": "b-id-helper--3a19e4d51ab3f9176e986e1b",
  "source": {
    "blob": "a3d1a3a63870f31fa0ed99f1ad87004b000a2898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a19e4d51ab3f9176e986e1b032692987cd597048e8c97a4b59697320f1d6e8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ef7cb0-997c-8800-7de8-f042a050c3e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem b_id_helper {a b : ℕ} (ha : 2 ≤ a) (hb : 2 < b) : 2 ≤ (a ^ b + 1) / (a + 1) := by
  rw [Nat.le_div_iff_mul_le (Nat.zero_lt_succ _)]
  apply Nat.succ_le_succ
  calc
    2 * a + 1 ≤ a ^ 2 * a := by nlinarith
    _ = a ^ 3 := by rw [pow_succ a 2]
    _ ≤ a ^ b := pow_le_pow (Nat.le_of_succ_le ha) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Variant14bbde606b0c7a65de0ecca5f9b4bc2ded821948d8ec09d93d01c58066132fea.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d1a3a63870f31fa0ed99f1ad87004b000a2898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
