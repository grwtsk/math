# isJacobsonRing_iff_jacobsonSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af56381c-eddb-e158-5f36-9027affa5d02",
  "kind": "lemma",
  "lexical_name": "isJacobsonRing_iff_jacobsonSpace",
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
  "slug": "isjacobsonring-iff-jacobsonspace--14dce59a2a4a26f3596dee9b",
  "source": {
    "blob": "bcc6bc98725d49cb45ee281e81790e345d84cdcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14dce59a2a4a26f3596dee9bb53234c05200bce12b5d36b56b99c8fe2a00e1ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af56381c-eddb-e158-5f36-9027affa5d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isJacobsonRing_iff_jacobsonSpace :
    IsJacobsonRing R ↔ JacobsonSpace (PrimeSpectrum R) := by
  refine ⟨fun _ ↦ inferInstance, fun H ↦ ⟨fun I hI ↦ le_antisymm ?_ Ideal.le_jacobson⟩⟩
  rw [← I.isRadical_jacobson.radical]
  conv_rhs => rw [← hI.radical]
  simp_rw [← vanishingIdeal_zeroLocus_eq_radical]
  apply vanishingIdeal_anti_mono
  rw [← H.1 (isClosed_zeroLocus I), (isClosed_zeroLocus _).closure_subset_iff]
  rintro x ⟨hx : I ≤ x.asIdeal, hx'⟩
  show jacobson I ≤ x.asIdeal
  exact sInf_le ⟨hx, (isClosed_singleton_iff_isMaximal _).mp hx'⟩

/--
If `R` is both noetherian and jacobson, then the following are equivalent for `x : Spec R`:
1. `{x}` is open (i.e. `x` is an isolated point)
2. `{x}` is clopen
3. `{x}` is both closed and stable under generalization
  (i.e. `x` is both a minimal prime and a maximal ideal)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Jacobson/Variant81044dedd0da628a1f76147c313c997d8f40479b39863acaa7f858be50b06a1d.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc6bc98725d49cb45ee281e81790e345d84cdcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
