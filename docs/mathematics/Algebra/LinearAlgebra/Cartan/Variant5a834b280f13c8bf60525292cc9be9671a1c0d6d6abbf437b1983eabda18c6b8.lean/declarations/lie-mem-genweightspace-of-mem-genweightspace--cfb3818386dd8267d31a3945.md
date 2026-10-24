# lie_mem_genWeightSpace_of_mem_genWeightSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07ab1bdd-6bfc-6359-f559-562d6323cbe7",
  "kind": "theorem",
  "lexical_name": "lie_mem_genWeightSpace_of_mem_genWeightSpace",
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
  "slug": "lie-mem-genweightspace-of-mem-genweightspace--cfb3818386dd8267d31a3945",
  "source": {
    "blob": "0da93c2b77d7de2390e0f789d23483c7dc4599a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb3818386dd8267d31a3945c5f15c9b8de5998d82c704aa02c84a6eadc28893",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07ab1bdd-6bfc-6359-f559-562d6323cbe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lie_mem_genWeightSpace_of_mem_genWeightSpace {χ₁ χ₂ : H → R} {x : L} {m : M}
    (hx : x ∈ rootSpace H χ₁) (hm : m ∈ genWeightSpace M χ₂) :
    ⁅x, m⁆ ∈ genWeightSpace M (χ₁ + χ₂) := by
  rw [genWeightSpace, LieSubmodule.mem_iInf]
  intro y
  replace hx : x ∈ genWeightSpaceOf L (χ₁ y) y := by
    rw [rootSpace, genWeightSpace, LieSubmodule.mem_iInf] at hx; exact hx y
  replace hm : m ∈ genWeightSpaceOf M (χ₂ y) y := by
    rw [genWeightSpace, LieSubmodule.mem_iInf] at hm; exact hm y
  exact lie_mem_maxGenEigenspace_toEnd hx hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cartan/Variant5a834b280f13c8bf60525292cc9be9671a1c0d6d6abbf437b1983eabda18c6b8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0da93c2b77d7de2390e0f789d23483c7dc4599a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
