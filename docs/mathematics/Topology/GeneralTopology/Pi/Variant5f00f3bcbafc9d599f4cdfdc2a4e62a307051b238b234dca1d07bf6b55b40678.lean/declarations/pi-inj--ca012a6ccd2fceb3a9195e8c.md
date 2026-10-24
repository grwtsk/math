# pi_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a40f565c-61b8-4074-a36d-4fe84dbcafb2",
  "kind": "theorem",
  "lexical_name": "pi_inj",
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
  "slug": "pi-inj--ca012a6ccd2fceb3a9195e8c",
  "source": {
    "blob": "e1537f2a1361182834f48e0f638347878911e303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca012a6ccd2fceb3a9195e8c237fc7a15a4168c0d4f6c734d4ffcc2e865045f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40f565c-61b8-4074-a36d-4fe84dbcafb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_inj [∀ i, NeBot (f₁ i)] : pi f₁ = pi f₂ ↔ f₁ = f₂ := by
  refine' ⟨fun h => _, congr_arg pi⟩
  have hle : f₁ ≤ f₂ := pi_le_pi.1 h.le
  haveI : ∀ i, NeBot (f₂ i) := fun i => neBot_of_le (hle i)
  exact hle.antisymm (pi_le_pi.1 h.ge)
#align filter.pi_inj Filter.pi_inj

end Pi

/-! ### `n`-ary coproducts of filters -/

section CoprodCat

-- for "Coprod"
set_option linter.uppercaseLean3 false

/-- Coproduct of filters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant5f00f3bcbafc9d599f4cdfdc2a4e62a307051b238b234dca1d07bf6b55b40678.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1537f2a1361182834f48e0f638347878911e303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
