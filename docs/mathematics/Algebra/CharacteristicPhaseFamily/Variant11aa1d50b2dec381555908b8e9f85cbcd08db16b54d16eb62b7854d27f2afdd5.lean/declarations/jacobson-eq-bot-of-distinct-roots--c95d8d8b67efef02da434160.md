# jacobson_eq_bot_of_distinct_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37f19b04-66e3-5b80-c7be-1ceb80f8618a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ee378e0-a6fb-c400-f006-0b435d3274d4",
  "kind": "theorem",
  "lexical_name": "jacobson_eq_bot_of_distinct_roots",
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
  "slug": "jacobson-eq-bot-of-distinct-roots--c95d8d8b67efef02da434160",
  "source": {
    "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 285,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c95d8d8b67efef02da43416039636fc30318f737bc36a1b2bcfa97a3c947d894",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee378e0-a6fb-c400-f006-0b435d3274d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobson_eq_bot_of_distinct_roots (c a b : ℂ)
    (hp : characteristicPolynomial c = (X - C a) * (X - C b)) (hab : a ≠ b) :
    Ring.jacobson (CharacteristicFiber c) = ⊥ := by
  have ha : (characteristicPolynomial c).eval a = 0 := by simp [hp]
  have hb : (characteristicPolynomial c).eval b = 0 := by simp [hp]
  have hka : Ring.jacobson (CharacteristicFiber c) ≤
      RingHom.ker (observeRoot c a ha).toRingHom := by
    let : (RingHom.ker (observeRoot c a ha).toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective _ (observe_root_surjective c a ha)
    exact Ring.jacobson_le_of_isMaximal _
  have hkb : Ring.jacobson (CharacteristicFiber c) ≤
      RingHom.ker (observeRoot c b hb).toRingHom := by
    let : (RingHom.ker (observeRoot c b hb).toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective _ (observe_root_surjective c b hb)
    exact Ring.jacobson_le_of_isMaximal _
  apply bot_unique
  intro x hx
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
  have hpa : p.eval a = 0 := by
    simpa [observeRoot] using RingHom.mem_ker.mp (hka hx)
  have hpb : p.eval b = 0 := by
    simpa [observeRoot] using RingHom.mem_ker.mp (hkb hx)
  rw [Ideal.mem_bot, AdjoinRoot.mk_eq_zero, hp]
  exact (isCoprime_X_sub_C_of_isUnit_sub (sub_ne_zero.mpr hab).isUnit).mul_dvd
    (dvd_iff_isRoot.mpr hpa) (dvd_iff_isRoot.mpr hpb)

/-- Every nondegenerate complex fiber has zero native Jacobson radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6c104e6b5354e79ca906e8466fa9ee2172fcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
