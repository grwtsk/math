# sourceIndex_zero_of_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:325da8f4-5958-e746-6930-207bb3d10a6a",
  "kind": "theorem",
  "lexical_name": "sourceIndex_zero_of_constant",
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
  "slug": "sourceindex-zero-of-constant--21f37357aefdcf0f71493034",
  "source": {
    "blob": "4d6ea916b59b9caf2477e5215b3b40abb7fe5280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleContourWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f37357aefdcf0f71493034b270d610e86f3f65bb0e05be5912526fc0055912",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:325da8f4-5958-e746-6930-207bb3d10a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceIndex_zero_of_constant {n : ℕ} {v y : List Coordinates} {d : List EdgeData}
    (h : RationalPoleContourTube.check n v d y = true) (he : Enclosures n d)
    {z : ℂ} (hz : z ≠ 0) (hconstant : ∀ t, PoleContourHomotopy.imageLoop n y t = z) :
    sourceIndex h he = 0 :=
  sourceIndex_eq_of_image h he (imageIndex_zero_of_constant h he hz hconstant)

end
end GRWTSK.RiemannHypothesis.PoleContourWinding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleContourWinding.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6ea916b59b9caf2477e5215b3b40abb7fe5280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
