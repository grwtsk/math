# dvd_iff_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e8647a2a1598588725b54aa1784dcd9f9666a56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccd97894-14b9-7931-d5ed-d185fd1d304a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fa654bd-cf7f-cd0a-033c-cc45ca44c209",
  "kind": "theorem",
  "lexical_name": "dvd_iff_norm_le",
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
  "slug": "dvd-iff-norm-le--4ffb9f5e6fa951a3a8151eb9",
  "source": {
    "blob": "5e8647a2a1598588725b54aa1784dcd9f9666a56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 223,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ffb9f5e6fa951a3a8151eb9a09ff505a64fd0468be80efa2a753deed217c89c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa654bd-cf7f-cd0a-033c-cc45ca44c209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_iff_norm_le {n : ℕ} {z : ℤ} : ↑(p ^ n) ∣ z ↔ padicNorm p z ≤ (p : ℚ) ^ (-n : ℤ) := by
  unfold padicNorm; split_ifs with hz
  · norm_cast at hz
    simp [hz]
  · rw [zpow_le_zpow_iff_right₀, neg_le_neg_iff, padicValRat.of_int,
      padicValInt.of_ne_one_ne_zero hp.1.ne_one _]
    · norm_cast
      rw [← FiniteMultiplicity.pow_dvd_iff_le_multiplicity]
      · norm_cast
      · apply Int.finiteMultiplicity_iff.2 ⟨by simp [hp.out.ne_one], mod_cast hz⟩
    · exact_mod_cast hz
    · exact_mod_cast hp.out.one_lt

/-- The `p`-adic norm of an integer `m` is one iff `p` doesn't divide `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant80eea15b05dd40259f5842d370cda883fbcb1ed63ead16e161a3823725d66607.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e8647a2a1598588725b54aa1784dcd9f9666a56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
