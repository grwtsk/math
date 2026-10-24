# not_isLocalRing_of_nontrivial_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a662a73-f0a8-d098-4bc3-23a65872994b",
  "kind": "theorem",
  "lexical_name": "not_isLocalRing_of_nontrivial_pi",
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
  "slug": "not-islocalring-of-nontrivial-pi--76dcd71869581188dfc822c0",
  "source": {
    "blob": "3daa23dca90158ca98d892c0d1fbeff760e90404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76dcd71869581188dfc822c005f1493f4519750c61056c10bfdea5f2a67c9d3c",
  "verification": {
    "reference": "docs/verification/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a662a73-f0a8-d098-4bc3-23a65872994b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isLocalRing_of_nontrivial_pi {ι : Type*} [Nontrivial ι] (R : ι → Type*)
    [∀ i, Semiring (R i)] [∀ i, Nontrivial (R i)] : ¬IsLocalRing (Π i, R i) := by
  classical
  let ⟨i₁, i₂, hi⟩ := exists_pair_ne ι
  have ha : ¬IsUnit (fun i ↦ if i = i₁ then 0 else 1 : Π i, R i) :=
    fun h ↦ not_isUnit_zero (M₀ := R i₁) (by simpa using h.map (Pi.evalRingHom R i₁))
  have hb : ¬IsUnit (fun i ↦ if i = i₁ then 1 else 0 : Π i, R i) :=
    fun h ↦ not_isUnit_zero (M₀ := R i₂) (by simpa [hi.symm] using h.map (Pi.evalRingHom R i₂))
  exact not_isLocalRing_def ha hb (by ext; dsimp; split <;> simp)

/-- The product of two nontrivial (semi)rings is not local. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonLocalRing/Variantfaf9bc3a46a4e56caeae440104e3edf33e65a06176da6e82fd3fa1932882ccdd.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa23dca90158ca98d892c0d1fbeff760e90404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
