# minFac_eq_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4bac7f6-04fa-9ba9-69e1-9f045f5aa356",
  "kind": "theorem",
  "lexical_name": "minFac_eq_two_iff",
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
  "slug": "minfac-eq-two-iff--2d94b3a8b28a9c591e2ecb3e",
  "source": {
    "blob": "26c68534934cefd62f0fc08e58bfa119b189ba7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 438,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d94b3a8b28a9c591e2ecb3e4a81b5277af66e7051dc6a80c152178ede8dac48",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4bac7f6-04fa-9ba9-69e1-9f045f5aa356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFac_eq_two_iff (n : ℕ) : minFac n = 2 ↔ 2 ∣ n := by
  constructor
  · intro h
    rw [←h]
    exact minFac_dvd n
  · intro h
    have ub := minFac_le_of_dvd (le_refl 2) h
    have lb := minFac_pos n
    refine ub.eq_or_lt.resolve_right fun h' => ?_
    have := le_antisymm (Nat.succ_le_of_lt lb) (lt_succ_iff.mp h')
    rw [eq_comm, Nat.minFac_eq_one_iff] at this
    subst this
    exact not_lt_of_le (le_of_dvd zero_lt_one h) one_lt_two
#align nat.min_fac_eq_two_iff Nat.minFac_eq_two_iff

end MinFac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantc86adc60194fd573e146dce0b2333b27d020fa2ba9573b2e6a41b6864d60e59d.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c68534934cefd62f0fc08e58bfa119b189ba7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
