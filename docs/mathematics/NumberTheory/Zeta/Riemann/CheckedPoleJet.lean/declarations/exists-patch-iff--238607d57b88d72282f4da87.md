# exists_patch_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a4dbea1-ef43-52f1-7042-a6b90b0bbd17",
  "kind": "theorem",
  "lexical_name": "exists_patch_iff",
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
  "slug": "exists-patch-iff--238607d57b88d72282f4da87",
  "source": {
    "blob": "64a511b0d114f6f7d8aa83cfba33256c23053d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 263,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238607d57b88d72282f4da87ff17a7a01d0902d4199b1a2a952b994062663b9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4dbea1-ef43-52f1-7042-a6b90b0bbd17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_patch_iff (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (∃ rows q, checkPatch c R S p rows = some q) ↔ RationalJetPolePatch.check c R S p = true := by
  constructor
  · rintro ⟨rows,q,h⟩; exact (checkPatch_refines h).2
  · intro h
    have hj := ((RationalJetPolePatch.check_iff _ _ _ _).mp h).1
    have hc := ((RationalPoleJet.check_iff _ _ _).mp hj).1
    obtain ⟨rows,hf⟩ := (exists_finite_iff c p (RationalPoleValue.finiteJet c p)).mpr ⟨hc,rfl⟩
    refine ⟨rows,RationalJetStateFold.reference c R S p,?_⟩
    simp only [checkPatch, evaluate, hf, Option.map_some, fromFinite_reference,
      RationalJetStateFold.reference, h, if_true]

/-- Actual F and F' semantics still come from the old, uniformly sourced jet theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a511b0d114f6f7d8aa83cfba33256c23053d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
