# repeated_jacobson_eq_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9b30531-bf66-5591-c585-b45fa98121a7",
  "kind": "theorem",
  "lexical_name": "repeated_jacobson_eq_span",
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
  "slug": "repeated-jacobson-eq-span--930c4c603715ec353fbec10e",
  "source": {
    "blob": "f9a1b9ab14a9b517709595fb1f00671920ad4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 262,
    "path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930c4c603715ec353fbec10e5e59b8070c55546e1dabc97a51475b2f81b88ecf",
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

Occurrence: `result:b9b30531-bf66-5591-c585-b45fa98121a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repeated_jacobson_eq_span (c : ℂ) (hc : c ^ 2 = 1) :
    Ring.jacobson (CharacteristicFiber c) = Ideal.span {centeredGenerator c} := by
  rw [← repeated_kernel_eq_jacobson c hc]
  apply le_antisymm
  · intro x hx
    obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective x
    have hp : p.eval c = 0 := by
      simpa [observeRepeated, observeRoot] using RingHom.mem_ker.mp hx
    obtain ⟨q, hq⟩ := dvd_iff_isRoot.mpr hp
    apply Ideal.mem_span_singleton.mpr
    exact ⟨AdjoinRoot.mk _ q, by rw [hq, map_mul, centered_generator_eq_mk]⟩
  · apply Ideal.span_le.mpr
    rintro _ (rfl : _ = centeredGenerator c)
    change observeRepeated c hc (centeredGenerator c) = 0
    rw [centered_generator_eq_mk]
    simp [observeRepeated, observeRoot]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CharacteristicPhaseFamily/Variante00c276c40e4f3a4e4325f5d5eaccaceb5cbf64f5ac751ed8b4c67c38de99f9c.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a1b9ab14a9b517709595fb1f00671920ad4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
