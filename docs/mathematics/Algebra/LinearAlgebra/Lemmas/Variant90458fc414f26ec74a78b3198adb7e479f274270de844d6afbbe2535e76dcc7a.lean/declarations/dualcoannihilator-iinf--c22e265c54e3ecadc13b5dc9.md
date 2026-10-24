# dualCoannihilator_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24b12c58-03cc-6fac-8173-384cfc7f1812",
  "kind": "theorem",
  "lexical_name": "dualCoannihilator_iInf",
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
  "slug": "dualcoannihilator-iinf--c22e265c54e3ecadc13b5dc9",
  "source": {
    "blob": "8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1031,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22e265c54e3ecadc13b5dc9a0b6eb7f25181ca3ab4c80ef2ee2a2a2eb798369",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b12c58-03cc-6fac-8173-384cfc7f1812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualCoannihilator_iInf {ι : Type*} (W : ι → Subspace K (Module.Dual K V))
    [∀ i, FiniteDimensional K (W i)] :
    (⨅ i, W i).dualCoannihilator = ⨆ i, (W i).dualCoannihilator := by
  cases isEmpty_or_nonempty ι
  · simp [iInf_of_isEmpty, iSup_of_empty']
  have := Module.Finite.iff_fg.mpr <|
    FG.of_le (Module.Finite.iff_fg.mp inferInstance) (iInf_le W <| Classical.arbitrary ι)
  rw [← dualAnnihilator_inj, dualCoannihilator_dualAnnihilator_eq, dualAnnihilator_iSup_eq]
  simp only [dualCoannihilator_dualAnnihilator_eq]

open OrderDual in
/-- For any vector space, `dualAnnihilator` and `dualCoannihilator` gives an antitone order
  isomorphism between the finite-codimensional subspaces in the vector space and the
  finite-dimensional subspaces in its dual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
