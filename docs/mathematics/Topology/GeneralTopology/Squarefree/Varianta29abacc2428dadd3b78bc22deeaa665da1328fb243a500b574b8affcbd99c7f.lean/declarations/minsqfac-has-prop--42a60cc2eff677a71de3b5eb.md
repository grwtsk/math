# minSqFac_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ae9afa2-1430-f226-4a90-5c8d9d9c8921",
  "kind": "theorem",
  "lexical_name": "minSqFac_has_prop",
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
  "slug": "minsqfac-has-prop--42a60cc2eff677a71de3b5eb",
  "source": {
    "blob": "19958609d3065cb323ddf0f509958062494c9535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42a60cc2eff677a71de3b5eb14fc591c734f77dc06ad20dc236832b560ee54d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae9afa2-1430-f226-4a90-5c8d9d9c8921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minSqFac_has_prop (n : ℕ) : MinSqFacProp n (minSqFac n) := by
  dsimp only [minSqFac]; split_ifs with d2 d4
  · exact ⟨prime_two, (dvd_div_iff_mul_dvd d2).1 d4, fun p pp _ => pp.two_le⟩
  · rcases Nat.eq_zero_or_pos n with rfl | n0
    · cases d4 (by decide)
    refine minSqFacProp_div _ prime_two d2 (mt (dvd_div_iff_mul_dvd d2).2 d4) ?_
    refine minSqFacAux_has_prop 3 (Nat.div_pos (le_of_dvd n0 d2) (by decide)) 0 rfl ?_
    refine fun p pp dp => succ_le_of_lt (lt_of_le_of_ne pp.two_le ?_)
    rintro rfl
    contradiction
  · rcases Nat.eq_zero_or_pos n with rfl | n0
    · cases d2 (by decide)
    refine minSqFacAux_has_prop _ n0 0 rfl ?_
    refine fun p pp dp => succ_le_of_lt (lt_of_le_of_ne pp.two_le ?_)
    rintro rfl
    contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19958609d3065cb323ddf0f509958062494c9535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
