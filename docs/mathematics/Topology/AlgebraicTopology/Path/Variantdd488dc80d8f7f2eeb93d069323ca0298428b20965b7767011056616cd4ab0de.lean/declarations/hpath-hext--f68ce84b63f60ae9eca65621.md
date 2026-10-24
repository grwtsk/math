# hpath_hext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa5b4c91-a54e-21b3-0c5e-ff0b67fbd530",
  "kind": "theorem",
  "lexical_name": "hpath_hext",
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
  "slug": "hpath-hext--f68ce84b63f60ae9eca65621",
  "source": {
    "blob": "5976cd37dd850920ac6af9d2f64b1fdfd06b41d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 342,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f68ce84b63f60ae9eca65621a9cb9fe653c9b94ffabe7173423533dfb9abb605",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa5b4c91-a54e-21b3-0c5e-ff0b67fbd530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hpath_hext {p₁ : Path x₀ x₁} {p₂ : Path x₂ x₃} (hp : ∀ t, p₁ t = p₂ t) :
    @HEq (Path.Homotopic.Quotient _ _) ⟦p₁⟧ (Path.Homotopic.Quotient _ _) ⟦p₂⟧ := by
  obtain rfl : x₀ = x₂ := by convert hp 0 <;> simp
  obtain rfl : x₁ = x₃ := by convert hp 1 <;> simp
  rw [heq_iff_eq]; congr; ext t; exact hp t
#align path.homotopic.hpath_hext Path.Homotopic.hpath_hext

end Homotopic

/-- A path `Path x₀ x₁` generates a homotopy between constant functions `fun _ ↦ x₀` and
`fun _ ↦ x₁`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5976cd37dd850920ac6af9d2f64b1fdfd06b41d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
