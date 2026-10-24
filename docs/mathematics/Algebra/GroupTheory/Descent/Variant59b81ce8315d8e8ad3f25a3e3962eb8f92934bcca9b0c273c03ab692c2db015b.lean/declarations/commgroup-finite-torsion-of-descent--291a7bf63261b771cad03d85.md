# CommGroup.finite_torsion_of_descent'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b35eb6a-66d9-d90f-6d7f-8abd4859bd8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bbbbb49-51a7-b190-ef48-776df3b8d054",
  "kind": "theorem",
  "lexical_name": "CommGroup.finite_torsion_of_descent'",
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
  "slug": "commgroup-finite-torsion-of-descent--291a7bf63261b771cad03d85",
  "source": {
    "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:291a7bf63261b771cad03d856d5f641f0e101eba52c2b51c9790cb50dfdf1bf4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bbbbb49-51a7-b190-ef48-776df3b8d054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommGroup.finite_torsion_of_descent' {G : Type*} [CommGroup G] {h : G → ℝ} {C : ℝ}
    (H : ∀ x y, |h (x * y) + h (x / y) - 2 * (h x + h y)| ≤ C) [Northcott h] :
    Finite (torsion G) := by
  have H' x : 4 * h x - (h 1 + C) ≤ h (x ^ 2) := by grind [pow_two, div_self']
  exact finite_torsion_of_descent (b := 4) (by norm_num) H'

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042a904f46d950bea9f607d67fbf827873c6c0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
