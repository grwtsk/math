# isInternal_prime_power_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da039a43-33b2-11e3-8d42-aa0f95b9755b",
  "kind": "theorem",
  "lexical_name": "isInternal_prime_power_torsion",
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
  "slug": "isinternal-prime-power-torsion--54c092d65be18cb2b264f554",
  "source": {
    "blob": "f5532bdb2e71cc816fa43380e29db93ea4186892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Algebra/DedekindDomain/Variantf6a8daa9b269248b30a4f4a63162150e3644625979db8657c3c0e69b038913b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c092d65be18cb2b264f554f295d0729e01d1708b5138c08b4b4f81f39a9bdb",
  "verification": {
    "reference": "docs/verification/Algebra/DedekindDomain/Variantf6a8daa9b269248b30a4f4a63162150e3644625979db8657c3c0e69b038913b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da039a43-33b2-11e3-8d42-aa0f95b9755b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInternal_prime_power_torsion [Module.Finite R M] (hM : Module.IsTorsion R M) :
    DirectSum.IsInternal fun p : (factors (⊤ : Submodule R M).annihilator).toFinset =>
      torsionBySet R M ((p : Ideal R) ^ (factors (⊤ : Submodule R M).annihilator).count ↑p) := by
  have hM' := Module.isTorsionBySet_annihilator_top R M
  have hI := Submodule.annihilator_top_inter_nonZeroDivisors hM
  refine' isInternal_prime_power_torsion_of_is_torsion_by_ideal _ hM'
  rw [← Set.nonempty_iff_ne_empty] at hI; rw [Submodule.ne_bot_iff]
  obtain ⟨x, H, hx⟩ := hI; exact ⟨x, H, nonZeroDivisors.ne_zero hx⟩
#align submodule.is_internal_prime_power_torsion Submodule.isInternal_prime_power_torsion

/-- A finitely generated torsion module over a Dedekind domain is an internal direct sum of its
`p i ^ e i`-torsion submodules for some prime ideals `p i` and numbers `e i`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DedekindDomain/Variantf6a8daa9b269248b30a4f4a63162150e3644625979db8657c3c0e69b038913b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DedekindDomain/Variantf6a8daa9b269248b30a4f4a63162150e3644625979db8657c3c0e69b038913b6.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5532bdb2e71cc816fa43380e29db93ea4186892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
