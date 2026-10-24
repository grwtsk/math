# toSphere_apply_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57cf2cc5-cffe-251f-2163-44cdb7d9ff4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a26436c-3f72-fb87-2df3-9c9f64bb801f",
  "kind": "theorem",
  "lexical_name": "toSphere_apply_aux",
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
  "slug": "tosphere-apply-aux--20b2ae5707f933964c41909e",
  "source": {
    "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20b2ae5707f933964c41909ebe7bddb4326e62e040872fc0ab59c47122d2dd96",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a26436c-3f72-fb87-2df3-9c9f64bb801f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSphere_apply_aux (s : Set (sphere (0 : E) 1)) (r : Ioi (0 : ℝ)) :
    μ ((↑) '' (homeomorphUnitSphereProd E ⁻¹' s ×ˢ Iio r)) = μ (Ioo (0 : ℝ) r • ((↑) '' s)) := by
  rw [← image2_smul, image2_image_right, ← Homeomorph.image_symm, image_image,
    ← image_subtype_val_Ioi_Iio, image2_image_left, image2_swap, ← image_prod]
  rfl

variable [BorelSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02354405954f6feba59092dfb320cfeb43cb3745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
