# dvd_choose_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:646547b2-90a1-ed07-e94b-50cefaef7815",
  "kind": "theorem",
  "lexical_name": "dvd_choose_pow",
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
  "slug": "dvd-choose-pow--5888f1b95393f8e9d49b48ee",
  "source": {
    "blob": "655a6fa17411b215a1fad083676425307b8d9cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5888f1b95393f8e9d49b48ee4cfdd7f1dc81001ed24a8dd3fc23be7bcb430c4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:646547b2-90a1-ed07-e94b-50cefaef7815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_choose_pow (hp : Prime p) (hk : k ≠ 0) (hkp : k ≠ p ^ n) : p ∣ (p ^ n).choose k := by
  obtain hkp | hkp := hkp.symm.lt_or_lt
  · simp [choose_eq_zero_of_lt hkp]
  refine' multiplicity_ne_zero.1 fun h => hkp.not_le <| Nat.le_of_dvd hk.bot_lt _
  have H := hp.multiplicity_choose_prime_pow_add_multiplicity hkp.le hk
  rw [h, zero_add, eq_coe_iff] at H
  exact H.1
#align nat.prime.dvd_choose_pow Nat.Prime.dvd_choose_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655a6fa17411b215a1fad083676425307b8d9cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
