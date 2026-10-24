# riemannSphereHomeomorph_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "583606b8698fbd1d87bbdf97ead5c08a98845262",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2bac49f-90c6-57ce-3481-0754ae1d8d4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ae91387-e47e-9002-949a-4671684529b1",
  "kind": "theorem",
  "lexical_name": "riemannSphereHomeomorph_components",
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
  "slug": "riemannspherehomeomorph-components--5c72c6a5f398f83167494085",
  "source": {
    "blob": "583606b8698fbd1d87bbdf97ead5c08a98845262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c72c6a5f398f83167494085ec40a55afecc6d9c1b1012029fe2d83ae14f965a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ae91387-e47e-9002-949a-4671684529b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannSphereHomeomorph_components (u v : ℝ) :
    let p := (riemannSphereHomeomorph ((⟨u, v⟩ : ℂ) : RiemannSphere) : Ambient).ofLp
    (p.1.re, p.2, p.1.im) =
      (2 * u / (u ^ 2 + v ^ 2 + 1),
        (u ^ 2 + v ^ 2 - 1) / (u ^ 2 + v ^ 2 + 1),
        2 * v / (u ^ 2 + v ^ 2 + 1)) := by
  rw [riemannSphereHomeomorph_coe_value]
  ext <;>
    simp only [stereographicDenominator, Complex.normSq_mk,
      Complex.smul_re, Complex.smul_im] <;>
    ring

/-- Finite complex values cover exactly the sphere with its north pole
removed. The single missing chart value is supplied by `infinity`. This is a
range theorem for the continuous homeomorphism, not for a finite sampling or
rendered mesh. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583606b8698fbd1d87bbdf97ead5c08a98845262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
