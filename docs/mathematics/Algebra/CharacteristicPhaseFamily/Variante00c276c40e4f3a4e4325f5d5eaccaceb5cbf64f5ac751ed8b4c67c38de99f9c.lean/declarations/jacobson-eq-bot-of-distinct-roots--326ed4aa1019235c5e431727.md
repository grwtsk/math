# jacobson_eq_bot_of_distinct_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11545385-576c-1d9b-02a6-51b895f72c33",
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
  "slug": "jacobson-eq-bot-of-distinct-roots--326ed4aa1019235c5e431727",
  "source": {
    "blob": "f9a1b9ab14a9b517709595fb1f00671920ad4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 293,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326ed4aa1019235c5e43172791a2d2051af82aa6997e8ffca3c9343578cf5226",
  "verification": {
    "reference": "docs/verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11545385-576c-1d9b-02a6-51b895f72c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–319.

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

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a1b9ab14a9b517709595fb1f00671920ad4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
